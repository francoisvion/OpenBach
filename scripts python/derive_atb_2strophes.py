import re
import sys
from fractions import Fraction
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from derive_atb import (
    reconcile_soprano, RefMismatch, events_for_voice, split_periods,
    ALLOW_TRAILING_SURPLUS,
)
from conform_voice import (
    extract_var, align_period, build_corrected_tokens, verbatim_with_hyphens,
    DeficitError, period_boundaries, split_by_boundaries, BoundaryError,
)

FOLDER = Path(
    "/Users/francoisvion/Documents/OpenBach/Lilypond/Chorals/"
    "Chorals avec paroles - partition ouverte - notes et layout séparés/2 lignes soprano barre de reprise"
)
TARGET_LIST = Path("/Users/francoisvion/.claude/jobs/4e2a67e6/tmp/target_164.txt")

REPEAT_RE = re.compile(r"\\repeat\s+volta\s+2\s*\{")
STANZA_RE = re.compile(r"^\s*\\set\s+stanza\s*=\s*\d+\s*")


def strip_stanza(body):
    """The lyric-body text starts with a literal \\set stanza = N directive
    -- not a lyric token, but a naive whitespace tokenizer (lyric_tokens_
    with_hyphens) would otherwise count "\\set", "stanza", "=", "N" as 4
    bogus extra syllables. Strip it off and hand it back separately so the
    caller can re-prepend it verbatim on the derived output."""
    m = STANZA_RE.match(body)
    if not m:
        return body, ""
    return body[m.end():], m.group(0)


def extract_repeat_body(music_body):
    """The music actually played twice (with 2 different stanzas) is
    exactly the content of \\repeat volta 2 { ... } -- may itself span more
    than one \\fermata-delimited period internally, that's fine, the normal
    period-splitting machinery handles it the same as a whole piece. Some
    pieces (e.g. Kyrie-style, each line echoed) have MULTIPLE separate
    \\repeat volta 2 { ... } blocks -- concatenate all of them in order,
    since stanza two's text spans all of them combined."""
    parts = []
    pos = 0
    while True:
        m = REPEAT_RE.search(music_body, pos)
        if m is None:
            break
        i = m.end() - 1
        depth = 0
        j = i
        while True:
            if music_body[j] == "{":
                depth += 1
            elif music_body[j] == "}":
                depth -= 1
                if depth == 0:
                    break
            j += 1
        parts.append(music_body[i + 1:j])
        pos = j + 1
    if not parts:
        return None
    return "\n".join(parts)


def replace_var_body(text, name, new_body_text):
    m = re.search(rf"^[ \t]*{re.escape(name)}\s*=\s*(?:\\lyricmode\s*)?\{{", text, re.MULTILINE)
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


def derive_stanza(text, sop_music, sop_lyrics_body_raw, voice_music_map, suffix,
                   fname, report, allow_trailing_surplus, voice_fallback_full_map=None):
    """voice_music_map: {"alto": music_body_or_None, ...} -- the primary
    span to use for each voice (full piece for stanza 1, this voice's own
    \\repeat volta 2 body for stanza 2). voice_fallback_full_map (stanza 2
    only): {"alto": full_body, ...} -- when the primary is None (some
    transcriptions only mark the repeat on the soprano staff -- the other
    voices still repeat, just not explicitly bracketed), fall back to the
    START of this voice's FULL music, truncated to the reference's own
    total duration."""
    voice_fallback_full_map = voice_fallback_full_map or {}
    sop_lyrics_body, stanza_prefix = strip_stanza(sop_lyrics_body_raw)
    try:
        ref_periods_events, ref_token_periods, ref_hyphen_periods, ref_underline_periods, leftover, convention = reconcile_soprano(
            sop_music, sop_lyrics_body, allow_trailing_surplus=allow_trailing_surplus
        )
    except RefMismatch as e:
        report.append((fname, f"soprano{suffix}", f"REF MISMATCH: {e}"))
        return text, False
    if leftover:
        report.append((fname, f"soprano{suffix}", f"NOTE: {len(leftover)} trailing token(s) unused: {leftover}"))

    ref_bounds = period_boundaries(ref_periods_events)
    ref_total_duration = ref_bounds[-1] if ref_bounds else None
    new_text = text
    any_change = False

    for voice, primary_music in voice_music_map.items():
        fallback_full = voice_fallback_full_map.get(voice)
        if primary_music is not None:
            tgt_events = events_for_voice(primary_music, convention)
        elif fallback_full is not None:
            all_events = events_for_voice(fallback_full, convention)
            tgt_events = []
            acc = Fraction(0)
            for e in all_events:
                if acc >= ref_total_duration:
                    break
                tgt_events.append(e)
                acc += e["dur"]
            report.append((fname, f"{voice}{suffix}",
                f"NOTE: no explicit repeat for this voice -- used first {ref_total_duration} of its full music instead"))
        else:
            report.append((fname, f"{voice}{suffix}", "SKIP: no music for this stanza's span"))
            continue

        tgt_periods_fermata = split_periods(tgt_events)
        if len(tgt_periods_fermata) == len(ref_periods_events):
            tgt_periods = tgt_periods_fermata
        else:
            try:
                tgt_periods = split_by_boundaries(tgt_events, ref_bounds)
            except BoundaryError as e:
                report.append((fname, f"{voice}{suffix}",
                    f"BOUNDARY MISMATCH (ref={len(ref_periods_events)} {voice}={len(tgt_periods_fermata)}): {e}"))
                continue

        new_tokens_all = []
        n_extra_periods = 0
        n_unresolved_periods = 0
        for pi, (rp_events, rp_tokens, rp_hyphens, rp_underlines, tp_events) in enumerate(
            zip(ref_periods_events, ref_token_periods, ref_hyphen_periods, ref_underline_periods, tgt_periods)
        ):
            ref_durs = [e["dur"] for e in rp_events]
            resolved = True
            try:
                mapping = align_period(ref_durs, tp_events)
                new_tokens = build_corrected_tokens(rp_tokens, mapping, rp_hyphens, rp_underlines)
                n_real = sum(1 for t in new_tokens if t not in ("--", "__"))
                if n_real != len(tp_events):
                    raise DeficitError(f"count mismatch after build ({n_real} vs {len(tp_events)})")
            except DeficitError as e:
                report.append((fname, f"{voice}{suffix}", f"UNRESOLVED period {pi}: {e}"))
                n_unresolved_periods += 1
                new_tokens = verbatim_with_hyphens(rp_tokens, rp_hyphens, rp_underlines)
                resolved = False
            if resolved and n_real != len(rp_tokens):
                n_extra_periods += 1
            new_tokens_all.extend(new_tokens)

        new_body = stanza_prefix + " ".join(new_tokens_all)
        varname = f"{voice}Lyrics{suffix}"
        existing = extract_var(new_text, varname)
        old_body = " ".join(existing.split()) if existing else None
        if new_body != old_body:
            if existing is None:
                report.append((fname, varname, "NO EXISTING VAR TO REPLACE"))
                continue
            new_text = replace_var_body(new_text, varname, new_body)
            any_change = True
            note = f"OK, changed ({n_extra_periods} insertion period(s)"
            if n_unresolved_periods:
                note += f", {n_unresolved_periods} UNRESOLVED"
            note += ")"
            report.append((fname, varname, note))
        else:
            report.append((fname, varname, "OK, unchanged"))

    return new_text, any_change


def process_file(path, report):
    text = path.read_text(encoding="utf-8")
    sop_music_full = extract_var(text, "sopranoMusic")
    alto_music_full = extract_var(text, "altoMusic")
    tenor_music_full = extract_var(text, "tenorMusic")
    bass_music_full = extract_var(text, "bassMusic")
    sop_lyrics_one = extract_var(text, "sopranoLyricsOne")
    sop_lyrics_two = extract_var(text, "sopranoLyricsTwo")

    if None in (sop_music_full, alto_music_full, tenor_music_full, bass_music_full,
                sop_lyrics_one, sop_lyrics_two):
        report.append((path.name, "-", "SKIP: missing expected variable(s)"))
        return False

    any_change = False

    # --- stanza One: full piece, same algorithm as the single-stanza project ---
    new_text, changed = derive_stanza(
        text, sop_music_full, sop_lyrics_one,
        {"alto": alto_music_full, "tenor": tenor_music_full, "bass": bass_music_full},
        "One", path.name, report, path.name in ALLOW_TRAILING_SURPLUS,
    )
    any_change = any_change or changed

    # --- stanza Two: just the repeated span, its own reference lyrics ---
    sop_repeat = extract_repeat_body(sop_music_full)
    alto_repeat = extract_repeat_body(alto_music_full)
    tenor_repeat = extract_repeat_body(tenor_music_full)
    bass_repeat = extract_repeat_body(bass_music_full)
    if sop_repeat is None:
        report.append((path.name, "soprano", "SKIP stanza Two: no \\repeat volta 2 found in sopranoMusic"))
    else:
        new_text, changed = derive_stanza(
            new_text, sop_repeat, sop_lyrics_two,
            {"alto": alto_repeat, "tenor": tenor_repeat, "bass": bass_repeat},
            "Two", path.name, report, False,
            voice_fallback_full_map={"alto": alto_music_full, "tenor": tenor_music_full, "bass": bass_music_full},
        )
        any_change = any_change or changed

    if any_change:
        path.write_text(new_text, encoding="utf-8")
    return any_change


def main():
    bases = [l.strip()[:-len("_notes.ily")] for l in TARGET_LIST.read_text(encoding="utf-8").splitlines() if l.strip()]
    report = []
    n_changed = 0
    n_issue = 0
    for base in bases:
        path = FOLDER / f"{base}_notes.ily"
        if not path.exists():
            report.append((base, "-", "MISSING FILE"))
            continue
        before = len(report)
        changed = process_file(path, report)
        issues = [r for r in report[before:] if not r[2].startswith("OK")]
        if issues:
            n_issue += 1
        if changed:
            n_changed += 1
    print(f"files processed: {len(bases)}, changed: {n_changed}, with flagged issue: {n_issue}")
    out = Path("/Users/francoisvion/.claude/jobs/4e2a67e6/tmp/voice_lyrics/derive_atb_2strophes_report.txt")
    with out.open("w", encoding="utf-8") as f:
        for fname, voice, msg in report:
            f.write(f"{fname}\t{voice}\t{msg}\n")
    print("report:", out)


if __name__ == "__main__":
    main()
