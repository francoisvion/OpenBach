import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from derive_atb import (
    reconcile_soprano, RefMismatch, events_for_voice, split_periods,
    ALLOW_TRAILING_SURPLUS,
)
from conform_voice import (
    extract_var, period_boundaries, split_by_boundaries, BoundaryError,
)
from rewrap_atb import tokenize_with_deco, line_real_counts, period_to_line_breaks, rewrap_voice_text
from derive_atb_2strophes import FOLDER, TARGET_LIST, extract_repeat_body, replace_var_body, strip_stanza

VOICES = ["alto", "tenor", "bass"]


def process_suffix(text, sop_music, sop_lyrics_raw, voice_music_map, suffix,
                    fname, report, allow_trailing_surplus):
    sop_lyrics_clean, _ = strip_stanza(sop_lyrics_raw)
    try:
        ref_periods_events, ref_token_periods, _, _, leftover, convention = reconcile_soprano(
            sop_music, sop_lyrics_clean, allow_trailing_surplus=allow_trailing_surplus
        )
    except RefMismatch as e:
        report.append((fname, f"soprano{suffix}", f"REF MISMATCH: {e}"))
        return text, False

    period_lens = [len(t) for t in ref_token_periods]
    sop_line_lens = line_real_counts(sop_lyrics_clean)
    if len(sop_line_lens) <= 1:
        return text, False  # soprano itself has no wrap to propagate
    break_after = period_to_line_breaks(period_lens, sop_line_lens)
    if break_after is None:
        report.append((fname, f"soprano{suffix}", "soprano lines don't align to period boundaries"))
        return text, False

    ref_bounds = period_boundaries(ref_periods_events)
    new_text = text
    changed_any = False
    for voice, music in voice_music_map.items():
        if music is None:
            continue
        varname = f"{voice}Lyrics{suffix}"
        v_lyrics_raw = extract_var(new_text, varname)
        if v_lyrics_raw is None:
            continue
        v_lyrics_clean, v_stanza_prefix = strip_stanza(v_lyrics_raw)
        cur_line_lens = line_real_counts(v_lyrics_clean)
        if len(cur_line_lens) == len(sop_line_lens):
            continue  # already matches -- leave alone

        tgt_events = events_for_voice(music, convention)
        tgt_periods_fermata = split_periods(tgt_events)
        if len(tgt_periods_fermata) == len(ref_periods_events):
            tgt_periods = tgt_periods_fermata
        else:
            try:
                tgt_periods = split_by_boundaries(tgt_events, ref_bounds)
            except BoundaryError as e:
                report.append((fname, f"{voice}{suffix}", f"BOUNDARY MISMATCH: {e}"))
                continue
        tgt_period_lens = [len(p) for p in tgt_periods]
        flat_items = tokenize_with_deco(v_lyrics_clean)
        new_body = rewrap_voice_text(flat_items, tgt_period_lens, break_after)
        if new_body is None:
            report.append((fname, f"{voice}{suffix}",
                f"token count mismatch: text has {len(flat_items)}, music needs {sum(tgt_period_lens)}"))
            continue
        if v_stanza_prefix:
            new_body = v_stanza_prefix.strip() + "\n" + new_body
        new_text = replace_var_body(new_text, varname, new_body)
        changed_any = True
        report.append((fname, varname, "OK, rewrapped"))

    return new_text, changed_any


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
    new_text, changed = process_suffix(
        text, sop_music_full, sop_lyrics_one,
        {"alto": alto_music_full, "tenor": tenor_music_full, "bass": bass_music_full},
        "One", path.name, report, path.name in ALLOW_TRAILING_SURPLUS,
    )
    any_change = any_change or changed

    sop_repeat = extract_repeat_body(sop_music_full)
    if sop_repeat is not None:
        new_text, changed = process_suffix(
            new_text, sop_repeat, sop_lyrics_two,
            {
                "alto": extract_repeat_body(alto_music_full),
                "tenor": extract_repeat_body(tenor_music_full),
                "bass": extract_repeat_body(bass_music_full),
            },
            "Two", path.name, report, False,
        )
        any_change = any_change or changed

    if any_change:
        path.write_text(new_text, encoding="utf-8")
    return any_change


def main():
    apply = "--apply" in sys.argv
    bases = [l.strip()[:-len("_notes.ily")] for l in TARGET_LIST.read_text(encoding="utf-8").splitlines() if l.strip()]
    report = []
    n_changed = 0
    for base in bases:
        path = FOLDER / f"{base}_notes.ily"
        if not path.exists():
            continue
        if apply:
            changed = process_file(path, report)
        else:
            text = path.read_text(encoding="utf-8")
            before = text
            changed = process_file(path, report)
            if changed:
                # process_file already wrote when apply path taken; for
                # dry-run we need a non-mutating variant -- simplest: just
                # report intent, actual dry-run correctness verified by
                # --apply run's own idempotent re-check.
                path.write_text(before, encoding="utf-8")
        if changed:
            n_changed += 1
    print(f"{'APPLIED' if apply else 'DRY-RUN'}: {n_changed} files changed")
    issues = [r for r in report if not r[2].startswith("OK")]
    print(f"{len(issues)} issues:")
    for r in issues:
        print(" ", r)


if __name__ == "__main__":
    main()
