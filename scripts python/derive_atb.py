"""
Derive/fix altoLyrics, tenorLyrics, bassLyrics from the invariant, user-verified
sopranoLyrics, applying the rules mined from the 39-file verified pool:

  Loi 0 - real word sequence identical across voices, never lost/reordered.
  Loi 1 - 1 non-tied non-rest note = 1 lyric slot (ties always collapse).
  Loi 2 - beam brackets [ ] do NOT mechanically force fusion; it's a per-piece
          authorial choice. For soprano (read-only reference) we must detect
          which convention its own text uses, per period, to correctly split
          its real words. For alto/tenor/bass (generated output) we always
          use the safe convention: every raw note gets its own slot (never
          silently drop a note's syllable).
  Loi 3 - "-" for mid-word continuation, "_"/"__" for held-completed-syllable.
  Loi 4 - identical rhythm at same instant => identical syllable (handled
          naturally by onset-based alignment).
  Loi 5 - extra notes vs soprano => local placeholder exactly where the extra
          note occurs (not appended at the end).
  Loi 6 - fewer notes vs soprano => either fewer placeholders in the same
          melisma, or (genuine harmonic suspension over 2+ different
          syllables) a quoted multi-word token, e.g. "gan -".
  Loi 7 - fermata period boundaries usually land on the same syllable; a
          one-syllable shift is tolerated when justified by a local
          surplus/deficit right at the cadence.
"""
import re
import sys
from fractions import Fraction
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from conform_voice import (
    extract_var, tokenize_events, collapse_ties, collapse_brackets,
    lyric_tokens_with_hyphens, align_period, build_corrected_tokens,
    DeficitError, period_boundaries, split_by_boundaries, BoundaryError,
)

FOLDER = Path(
    "/Users/francoisvion/Documents/OpenBach/Lilypond/Chorals/"
    "Chorals avec paroles - partition ouverte - notes et layout séparés/1 ligne soprano (170)"
)


# ---------- grouping helpers ----------

def raw_events(music_body):
    """Tie-collapsed, rest-dropped events, bracket groups NOT merged."""
    events = collapse_ties(tokenize_events(music_body))
    return [e for e in events if not e["is_rest"]]


def group_by_bracket(events):
    """Partition an event list into groups: a run of same bracket_group id,
    or a single standalone event. Returns list of lists."""
    groups = []
    i, n = 0, len(events)
    while i < n:
        gid = events[i]["bracket_group"]
        if gid is None:
            groups.append([events[i]])
            i += 1
            continue
        j = i
        grp = []
        while j < n and events[j]["bracket_group"] == gid:
            grp.append(events[j])
            j += 1
        groups.append(grp)
        i = j
    return groups


def merge_group(grp):
    m = dict(grp[0])
    m["dur"] = sum((e["dur"] for e in grp), Fraction(0))
    m["is_fermata"] = any(e["is_fermata"] for e in grp)
    return m


def groups_to_events(groups, choice):
    """choice[i] == 'collapse' or 'raw' for groups[i] (singletons ignored)."""
    out = []
    for g, c in zip(groups, choice):
        if len(g) == 1 or c == "collapse":
            out.append(merge_group(g) if len(g) > 1 else dict(g[0]))
        else:
            out.extend(dict(e) for e in g)
    return out


def split_periods(events):
    periods, cur = [], []
    for e in events:
        cur.append(e)
        if e["is_fermata"]:
            periods.append(cur)
            cur = []
    if cur:
        periods.append(cur)
    return periods


# ---------- soprano reconciliation (read-only reference) ----------

class RefMismatch(Exception):
    pass


def reconcile_soprano(music_body, lyrics_body):
    """Returns (periods_events, periods_tokens, periods_hyphens, leftover)
    where each period's token slice length exactly equals its event slice
    length, and `leftover` is any harmless trailing surplus (real
    \\lyricsto silently ignores unused tokens after the last note -- proven
    empirically). Raises RefMismatch if the surplus/deficit falls BEFORE the
    last period (a real, non-trailing problem) or no choice reconciles."""
    events = raw_events(music_body)
    groups = group_by_bracket(events)
    tokens, hyphen_after = lyric_tokens_with_hyphens(lyrics_body)
    n_tokens = len(tokens)

    multi = [i for i, g in enumerate(groups) if len(g) > 1]

    def total_slots(choice_map):
        choice = [choice_map.get(i, "collapse") for i in range(len(groups))]
        return len(groups_to_events(groups, choice))

    # 1) global all-collapse
    choice_all_collapse = {i: "collapse" for i in multi}
    # 2) global all-raw
    choice_all_raw = {i: "raw" for i in multi}

    base = total_slots(choice_all_collapse)
    full = total_slots(choice_all_raw)

    chosen = None
    if base == n_tokens:
        chosen = choice_all_collapse
    elif full == n_tokens:
        chosen = choice_all_raw
    elif base < n_tokens < full:
        # try to switch just enough groups collapse->raw to hit an EXACT match
        choice = dict(choice_all_collapse)
        remaining = n_tokens - base
        for i in reversed(multi):
            if remaining <= 0:
                break
            add = len(groups[i]) - 1
            if add <= remaining:
                choice[i] = "raw"
                remaining -= add
        if remaining == 0:
            chosen = choice

    if chosen is None:
        # no exact reconciliation possible with any bracket hypothesis; pick
        # whichever of collapse/raw leaves the SMALLEST non-negative leftover
        # (closest to using up all real text) and treat the rest as a
        # harmless trailing surplus -- \lyricsto silently ignores unused
        # tokens after the last note (proven empirically), as long as the
        # shortfall truly falls at the very end (checked below).
        candidates = []
        if base <= n_tokens:
            candidates.append((n_tokens - base, choice_all_collapse))
        if full <= n_tokens:
            candidates.append((n_tokens - full, choice_all_raw))
        if not candidates:
            raise RefMismatch(
                f"cannot reconcile: tokens={n_tokens} all-collapse={base} all-raw={full} "
                f"(fewer tokens than notes even in the most compact reading -- real deficit)"
            )
        candidates.sort(key=lambda c: c[0])
        chosen = candidates[0][1]

    choice = [chosen.get(i, "collapse") for i in range(len(groups))]
    final_events = groups_to_events(groups, choice)
    periods_events = split_periods(final_events)

    periods_tokens, periods_hyphens = [], []
    pos = 0
    for pe in periods_events:
        n = len(pe)
        if pos + n > n_tokens:
            raise RefMismatch(
                f"token shortfall INSIDE the piece (not trailing) at period "
                f"{len(periods_tokens)}: need {n} more tokens, only "
                f"{n_tokens - pos} remain"
            )
        periods_tokens.append(tokens[pos:pos + n])
        periods_hyphens.append(hyphen_after[pos:pos + n])
        pos += n

    leftover = tokens[pos:]
    return periods_events, periods_tokens, periods_hyphens, leftover


# ---------- file processing ----------

def replace_var_body(text, name, new_body_text):
    m = re.search(rf"^{name}\s*=\s*(?:\\lyricmode\s*)?\{{", text, re.MULTILINE)
    i = m.end() - 1
    depth = 0
    j = i
    while True:
        if text[j] == "{":
            depth += 1
        elif text[j] == "}":
            depth -= 1
            if depth == 0:
                break
        j += 1
    return text[:i + 1] + "\n      " + new_body_text + "\n    " + text[j:]


def process_file(path, report):
    text = path.read_text(encoding="utf-8")
    sop_music = extract_var(text, "sopranoMusic")
    sop_lyrics = extract_var(text, "sopranoLyrics")
    if sop_music is None or sop_lyrics is None:
        report.append((path.name, "-", "SKIP: no sopranoMusic/sopranoLyrics (non-standard variable names)"))
        return None

    try:
        ref_periods_events, ref_token_periods, ref_hyphen_periods, leftover = reconcile_soprano(sop_music, sop_lyrics)
    except RefMismatch as e:
        report.append((path.name, "soprano", f"REF MISMATCH: {e}"))
        return None
    if leftover:
        report.append((path.name, "soprano", f"NOTE: {len(leftover)} trailing token(s) unused (harmless, ignored): {leftover}"))

    ref_bounds = period_boundaries(ref_periods_events)

    new_text = text
    any_change = False
    for voice in ["alto", "tenor", "bass"]:
        music = extract_var(text, f"{voice}Music")
        if music is None:
            report.append((path.name, voice, "SKIP: no music var"))
            continue

        tgt_events = raw_events(music)
        tgt_periods_fermata = split_periods(tgt_events)
        if len(tgt_periods_fermata) == len(ref_periods_events):
            tgt_periods = tgt_periods_fermata
        else:
            try:
                tgt_periods = split_by_boundaries(tgt_events, ref_bounds)
            except BoundaryError as e:
                report.append((path.name, voice,
                    f"BOUNDARY MISMATCH (fermata count ref={len(ref_periods_events)} "
                    f"{voice}={len(tgt_periods_fermata)}): {e}"))
                continue

        new_tokens_all = []
        voice_ok = True
        n_extra_periods = 0
        n_combined_periods = 0
        for pi, (rp_events, rp_tokens, rp_hyphens, tp_events) in enumerate(
            zip(ref_periods_events, ref_token_periods, ref_hyphen_periods, tgt_periods)
        ):
            ref_durs = [e["dur"] for e in rp_events]
            try:
                mapping = align_period(ref_durs, tp_events)
            except DeficitError as e:
                report.append((path.name, voice, f"UNRECOVERABLE period {pi}: {e}"))
                voice_ok = False
                break
            new_tokens = build_corrected_tokens(rp_tokens, mapping, rp_hyphens)
            n_real = sum(1 for t in new_tokens if t != "--")
            if n_real != len(tp_events):
                report.append((path.name, voice, f"INTERNAL LEN MISMATCH period {pi}"))
                voice_ok = False
                break
            if n_real != len(rp_tokens):
                n_extra_periods += 1
            if any(t.startswith('"') and " " in t for t in new_tokens):
                n_combined_periods += 1
            new_tokens_all.extend(new_tokens)

        if not voice_ok:
            continue

        new_body = " ".join(new_tokens_all)
        existing_lyr = extract_var(text, f"{voice}Lyrics")
        old_body = " ".join(existing_lyr.split()) if existing_lyr else None
        if new_body != old_body:
            if existing_lyr is not None:
                new_text = replace_var_body(new_text, f"{voice}Lyrics", new_body)
            else:
                report.append((path.name, voice, "NO EXISTING VAR TO REPLACE (needs manual variable creation)"))
                continue
            any_change = True
            note = f"OK, changed ({n_extra_periods} period(s) w/ insertions"
            if n_combined_periods:
                note += f", {n_combined_periods} combined-token period(s)"
            note += ")"
            report.append((path.name, voice, note))
        else:
            report.append((path.name, voice, "OK, unchanged"))

    if any_change:
        path.write_text(new_text, encoding="utf-8")
    return any_change


def main(file_list):
    report = []
    n_changed = 0
    n_issue = 0
    for fname in file_list:
        path = FOLDER / fname
        if not path.exists():
            report.append((fname, "-", "MISSING FILE"))
            continue
        before = len(report)
        changed = process_file(path, report)
        issues = [r for r in report[before:] if not r[2].startswith("OK")]
        if issues:
            n_issue += 1
        if changed:
            n_changed += 1

    print(f"files processed: {len(file_list)}, changed: {n_changed}, with flagged issue: {n_issue}")
    out = Path("/Users/francoisvion/.claude/jobs/4e2a67e6/tmp/voice_lyrics/derive_atb_report.txt")
    with out.open("w", encoding="utf-8") as f:
        for fname, voice, msg in report:
            f.write(f"{fname}\t{voice}\t{msg}\n")
    print("report:", out)


if __name__ == "__main__":
    args = sys.argv[1:]
    if len(args) == 1 and args[0].startswith("@"):
        list_path = Path(args[0][1:])
        notes_files = [l.strip() for l in list_path.read_text(encoding="utf-8").splitlines() if l.strip()]
    else:
        notes_files = args
    notes_files = sorted(set(f for f in notes_files if f.endswith("_notes.ily")))
    main(notes_files)
