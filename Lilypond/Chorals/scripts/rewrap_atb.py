"""Reinsert alto/tenor/bass line-wrap to match sopranoLyrics' own line
structure -- WITHOUT touching any token content. Pure whitespace/newline
repair: soprano's line breaks are trusted as the reference for "how many
periods go on one line"; each target voice's per-period token count is
computed independently from its OWN music (never from its own current
text), so the existing (already-correct) text is only ever re-sliced at
period boundaries, never regenerated.
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from derive_atb import (
    reconcile_soprano, RefMismatch, events_for_voice, split_periods,
    ALLOW_TRAILING_SURPLUS, FOLDER,
)
from conform_voice import (
    extract_var, period_boundaries, split_by_boundaries, BoundaryError,
)

VOICES = ["alto", "tenor", "bass"]


def tokenize_with_deco(body):
    """[[real_token, [deco,...]], ...] -- '--'/'__' attach as trailing
    decorations of the token they follow."""
    items = []
    for tok in body.split():
        if tok in ("--", "__"):
            if items:
                items[-1][1].append(tok)
            continue
        items.append([tok, []])
    return items


def line_real_counts(body):
    return [len(tokenize_with_deco(line)) for line in body.split("\n") if line.strip()]


def period_to_line_breaks(period_lens, line_lens):
    """Returns a set of period-indices AFTER which a line break must occur,
    or None if soprano's own lines don't align exactly with period
    boundaries (irregular -- caller should skip)."""
    period_cum = []
    acc = 0
    for n in period_lens:
        acc += n
        period_cum.append(acc)
    line_cum = []
    acc = 0
    for n in line_lens:
        acc += n
        line_cum.append(acc)
    if line_cum[-1] != period_cum[-1]:
        return None
    if not set(line_cum).issubset(set(period_cum)):
        return None
    breaks = set(i for i, c in enumerate(period_cum) if c in line_cum)
    return breaks


def rewrap_voice_text(flat_items, period_lens, break_after, indent="  "):
    """flat_items: [[token, [deco,...]], ...] flattened (no existing line
    breaks). period_lens: target voice's own per-period real-token counts.
    break_after: set of period indices after which to insert a newline."""
    if sum(period_lens) != len(flat_items):
        return None
    lines = []
    cur = []
    pos = 0
    for pi, n in enumerate(period_lens):
        for tok, deco in flat_items[pos:pos + n]:
            cur.append(tok)
            cur.extend(deco)
        pos += n
        if pi in break_after and pi != len(period_lens) - 1:
            lines.append(" ".join(cur))
            cur = []
    if cur:
        lines.append(" ".join(cur))
    return ("\n" + indent).join(lines)


def process(path, apply=False, report=None):
    text = path.read_text(encoding="utf-8")
    sop_music = extract_var(text, "sopranoMusic")
    sop_lyrics_raw = extract_var(text, "sopranoLyrics")
    if sop_music is None or sop_lyrics_raw is None:
        return
    try:
        ref_periods_events, ref_token_periods, _, _, leftover, convention = reconcile_soprano(
            sop_music, sop_lyrics_raw, allow_trailing_surplus=path.name in ALLOW_TRAILING_SURPLUS
        )
    except RefMismatch as e:
        if report is not None:
            report.append((path.name, "soprano", f"REF MISMATCH: {e}"))
        return

    period_lens = [len(t) for t in ref_token_periods]
    sop_line_lens = line_real_counts(sop_lyrics_raw)
    if len(sop_line_lens) <= 1:
        return  # soprano itself has no wrap to propagate -- nothing to do here
    break_after = period_to_line_breaks(period_lens, sop_line_lens)
    if break_after is None:
        if report is not None:
            report.append((path.name, "soprano", "soprano lines don't align to period boundaries"))
        return

    ref_bounds = period_boundaries(ref_periods_events)
    new_text = text
    changed_any = False
    for voice in VOICES:
        v_music = extract_var(text, f"{voice}Music")
        v_lyrics_raw = extract_var(new_text, f"{voice}Lyrics")
        if v_music is None or v_lyrics_raw is None:
            continue
        cur_line_lens = line_real_counts(v_lyrics_raw)
        if len(cur_line_lens) == len(sop_line_lens):
            continue  # already matches soprano's line count -- leave alone
        tgt_events = events_for_voice(v_music, convention)
        tgt_periods_fermata = split_periods(tgt_events)
        if len(tgt_periods_fermata) == len(ref_periods_events):
            tgt_periods = tgt_periods_fermata
        else:
            try:
                tgt_periods = split_by_boundaries(tgt_events, ref_bounds)
            except BoundaryError as e:
                if report is not None:
                    report.append((path.name, voice, f"BOUNDARY MISMATCH: {e}"))
                continue
        tgt_period_lens = [len(p) for p in tgt_periods]
        flat_items = tokenize_with_deco(v_lyrics_raw)
        new_body = rewrap_voice_text(flat_items, tgt_period_lens, break_after)
        if new_body is None:
            if report is not None:
                n_flat = len(flat_items)
                report.append((path.name, voice,
                                f"token count mismatch: text has {n_flat} real tokens, "
                                f"music periods need {sum(tgt_period_lens)}"))
            continue
        if apply:
            import re as _re
            m = _re.search(rf"^{voice}Lyrics\s*=\s*(?:\\lyricmode\s*)?\{{", new_text, _re.MULTILINE)
            i = m.end() - 1
            depth = 0
            j = i
            while True:
                if new_text[j] == "{":
                    depth += 1
                elif new_text[j] == "}":
                    depth -= 1
                    if depth == 0:
                        break
                j += 1
            new_text = new_text[:i + 1] + "\n  " + new_body + "\n" + new_text[j:]
        changed_any = True

    if apply and changed_any:
        path.write_text(new_text, encoding="utf-8")
    return changed_any


def main():
    apply = "--apply" in sys.argv
    report = []
    n_changed = 0
    for path in sorted(FOLDER.glob("*_notes.ily")):
        changed = process(path, apply=apply, report=report)
        if changed:
            n_changed += 1
    print(f"{'APPLIED' if apply else 'DRY-RUN'}: {n_changed} files re-wrapped")
    print(f"{len(report)} files/voices flagged (not touched):")
    for fname, voice, msg in report:
        print(f"  {fname} [{voice}]: {msg}")


if __name__ == "__main__":
    main()
