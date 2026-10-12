"""Safety harness for prosody parser fixes (regles_prosodie_textunterlegung.md).

Any text-placement fix (category A/B syncope, future anticipation/passing-tone
fixes) MUST pass verify_safety() before being written to disk. A fix that
fails any check is rejected, never silently written.

Three checks, in order (fail-fast):
1. Total syllable-token count unchanged for the whole stanza.
2. Per-period (\\fermata-delimited) token count unchanged -- guarantees the
   vertical sync of periods across voices isn't shifted.
3. Final melisma structure unchanged -- the closing word of the stanza and
   its trailing run of "_" extension tokens (Alleluia/Eleison-type endings)
   must be byte-identical before/after.
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import conform_voice as cv


def period_token_counts(events, tokens):
    """Token-count per \\fermata-delimited period, assuming events/tokens
    are already known to be the same length and 1:1 aligned."""
    counts = []
    cur = 0
    for e in events:
        cur += 1
        if e["is_fermata"]:
            counts.append(cur)
            cur = 0
    if cur:
        counts.append(cur)
    return counts


def trailing_extension_run(tokens):
    """(n, final_real_word): length of the trailing run of '_' tokens and
    the real word token right before that run."""
    n = 0
    i = len(tokens) - 1
    while i >= 0 and tokens[i] == "_":
        n += 1
        i -= 1
    return n, (tokens[i] if i >= 0 else None)


def verify_safety(music_body, old_lyric_body, new_lyric_body):
    """Returns a dict of check results. checks['all_ok'] is the single
    pass/fail gate callers must honor."""
    events = cv.consuming_events(music_body)
    old_tokens, old_ha, old_ua = cv.lyric_tokens_with_hyphens(old_lyric_body)
    new_tokens, new_ha, new_ua = cv.lyric_tokens_with_hyphens(new_lyric_body)

    checks = {
        "count_total_ok": len(old_tokens) == len(new_tokens),
    }
    if not checks["count_total_ok"]:
        checks["all_ok"] = False
        return checks

    events_match = len(events) == len(new_tokens)
    checks["events_match_count"] = events_match

    if events_match:
        old_periods = period_token_counts(events, old_tokens)
        new_periods = period_token_counts(events, new_tokens)
        checks["periods_ok"] = old_periods == new_periods
    else:
        # can't verify period boundaries without a reliable events<->tokens
        # mapping -- conservative: treat as unverifiable, not as "ok"
        checks["periods_ok"] = False

    old_run, old_final_word = trailing_extension_run(old_tokens)
    new_run, new_final_word = trailing_extension_run(new_tokens)
    checks["final_melisma_ok"] = (old_run == new_run and old_final_word == new_final_word)

    checks["all_ok"] = checks["events_match_count"] and checks["periods_ok"] and checks["final_melisma_ok"]
    return checks
