import re
import sys
from fractions import Fraction
from pathlib import Path

sys.path.insert(0, "/Users/francoisvion/.claude/jobs/4e2a67e6/tmp/voice_lyrics")
from svg_ground_truth import true_consumption_sequence

# ---------- parsing helpers ----------

def extract_var(text, name):
    m = re.search(
        rf"^{name}\s*=\s*(?:\\lyricmode\s*)?(?:\\relative\s+\S+\s*)?(?:\\transpose\s+\S+\s+\S+\s*)?\{{",
        text, re.MULTILINE,
    )
    if not m:
        return None
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
    return text[i + 1:j]


NOTE_RE = re.compile(
    r"^([a-grs](?:is|es)*)([',]*)[!?]*(\d+)?(\.*)(~?)(\\[a-zA-Z]+)?$", re.IGNORECASE
)


def duration_value(dur_digits, dots, default):
    if dur_digits:
        base = Fraction(1, int(dur_digits))
        default = base
    else:
        base = default
    val = base
    add = base
    for _ in dots:
        add = add / 2
        val += add
    return val, base


def tokenize_events(body):
    """Return list of dicts: {dur, is_rest, is_tie, is_fermata, bracket_group}
    in time order. bracket_group is an int id shared by a manual-beam group
    (opener note + every note inside the following [ ... ]); None if the
    note is not part of any bracket group."""
    spaced = body.replace("[", " [ ").replace("]", " ] ").replace("|", " ").replace("~", "~ ")
    tokens = spaced.split()
    events = []
    default_dur = Fraction(1, 4)
    in_bracket = False
    group_id = 0
    pending_group = None  # group id to attach to the NEXT note (the opener)
    for tok in tokens:
        if tok == "[":
            in_bracket = True
            group_id += 1
            if events:
                events[-1]["bracket_group"] = group_id
            continue
        if tok == "]":
            in_bracket = False
            continue
        if tok.startswith("\\"):
            if "fermata" in tok and events:
                events[-1]["is_fermata"] = True
            continue
        core = tok.strip("()")
        if not core:
            continue
        if re.match(r"^\d+\*\d+$", core):
            continue
        m = NOTE_RE.match(core)
        if not m:
            continue
        letter, octave, durdig, dots, tie, cmd = m.groups()
        val, base = duration_value(durdig, dots, default_dur)
        default_dur = base
        is_fermata = bool(cmd and "fermata" in cmd)
        events.append({
            "dur": val,
            "is_rest": letter.lower() in ("r", "s"),
            "is_tie": tie == "~",
            "is_fermata": is_fermata,
            "bracket_group": group_id if in_bracket else None,
        })
    return events


def collapse_brackets(events):
    """Merge every manual-beam bracket group into a single consuming event
    (working hypothesis validated tonight: a bracketed group consumes ONE
    lyric slot). The group's fermata/tie flags propagate if any member has
    them; duration is summed."""
    out = []
    i = 0
    while i < len(events):
        e = events[i]
        gid = e["bracket_group"]
        if gid is None:
            out.append(dict(e))
            i += 1
            continue
        merged = dict(e)
        j = i + 1
        while j < len(events) and events[j]["bracket_group"] == gid:
            merged["dur"] += events[j]["dur"]
            merged["is_fermata"] = merged["is_fermata"] or events[j]["is_fermata"]
            merged["is_tie"] = events[j]["is_tie"]
            j += 1
        out.append(merged)
        i = j
    return out


def collapse_ties(events):
    """Merge a tied note into the previous one's duration; the tied-to note
    does not get its own consuming slot."""
    out = []
    i = 0
    while i < len(events):
        e = dict(events[i])
        while i > 0 and events[i - 1]["is_tie"] and not e["is_rest"]:
            break
        out.append(e)
        i += 1
    # second pass: fold ties forward
    folded = []
    skip_next_merge = False
    for e in events:
        if folded and folded[-1]["is_tie"] and not e["is_rest"]:
            folded[-1]["dur"] += e["dur"]
            folded[-1]["is_tie"] = e["is_tie"]
            folded[-1]["is_fermata"] = folded[-1]["is_fermata"] or e["is_fermata"]
            continue
        folded.append(dict(e))
    return folded


def consuming_events(body):
    """Events that actually take a lyric slot: a manual-beam bracket group
    (with \\autoBeamOff) consumes exactly ONE slot, ties collapse, rests
    are dropped."""
    events = collapse_brackets(tokenize_events(body))
    events = collapse_ties(events)
    return [e for e in events if not e["is_rest"]]


def split_periods(events):
    """Split a consuming-event list into periods ending at each fermata
    (a period includes its terminating fermata note)."""
    periods = []
    cur = []
    for e in events:
        cur.append(e)
        if e["is_fermata"]:
            periods.append(cur)
            cur = []
    if cur:
        periods.append(cur)
    return periods


def period_boundaries(periods):
    """Cumulative duration (Fraction) at the END of each period."""
    bounds = []
    acc = Fraction(0)
    for p in periods:
        acc += sum((e["dur"] for e in p), Fraction(0))
        bounds.append(acc)
    return bounds


class BoundaryError(Exception):
    """A target voice's notes don't land exactly on a soprano period
    boundary (its own fermata/bar structure doesn't line up in time)."""


def split_by_boundaries(events, boundaries):
    """Split events (a flat consuming-event list, no reliance on this
    voice's own \\fermata marks) at the given cumulative-duration
    boundaries (taken from the reference voice). Raises BoundaryError if a
    boundary falls strictly inside a note instead of exactly between two."""
    periods = []
    cur = []
    acc = Fraction(0)
    bi = 0
    for e in events:
        cur.append(e)
        acc += e["dur"]
        if bi < len(boundaries) and acc == boundaries[bi]:
            periods.append(cur)
            cur = []
            bi += 1
        elif bi < len(boundaries) and acc > boundaries[bi]:
            raise BoundaryError(
                f"cumulative duration {acc} overshoots boundary {boundaries[bi]}"
            )
    if cur:
        periods.append(cur)
    if bi != len(boundaries):
        raise BoundaryError(
            f"only reached {bi}/{len(boundaries)} boundaries (total duration mismatch)"
        )
    return periods


def lyric_tokens(body):
    raw = body.split()
    out = []
    for tok in raw:
        if tok == "--":
            continue
        out.append(tok)
    return out


def lyric_tokens_with_hyphens(body):
    """Like lyric_tokens, but also returns a parallel list of booleans:
    hyphen_after[i] is True if tokens[i] is immediately followed by a
    '--' hyphen-join marker in the source (same word, next syllable)."""
    raw = body.split()
    tokens = []
    hyphen_after = []
    for tok in raw:
        if tok == "--":
            if hyphen_after:
                hyphen_after[-1] = True
            continue
        tokens.append(tok)
        hyphen_after.append(False)
    return tokens, hyphen_after


def split_lyric_periods(tokens):
    """Split soprano's lyric tokens into periods matching punctuation-based
    fermata cues is unreliable; instead the caller aligns by COUNT using the
    soprano music's own period lengths."""
    return tokens


# ---------- core alignment ----------

class DeficitError(Exception):
    """No longer raised for a plain deficit (see align_period) -- kept for
    backward compatibility / genuinely unrecoverable cases (should not
    normally trigger)."""


def align_period(ref_durs, tgt_events):
    """ref_durs: list[Fraction] soprano note durations for this period.
    tgt_events: list[dict] target-voice consuming events for the same period.
    Returns a list where element j is a LIST of ref indices (0-based) that
    target event j corresponds to: usually a single-element list, but:
    - several consecutive target events can point at the SAME ref index
      (passing tones subdividing one soprano note) -> handled by giving
      them each a single-element list with that index; build_corrected_tokens
      turns repeats into placeholders.
    - a single target event can cover MULTIPLE ref indices (the voice has
      one long/tied note where soprano has several syllables) -> that
      target event's list has all those indices, and build_corrected_tokens
      combines their words into one quoted multi-word lyric token so no
      word is ever dropped.
    """
    tgt_durs = [e["dur"] for e in tgt_events]
    n_ref = len(ref_durs)
    n_tgt = len(tgt_durs)
    if n_ref == n_tgt:
        return [[i] for i in range(n_ref)]

    # onset time of each ref/target note (cumulative duration BEFORE it)
    ref_onset = []
    acc = Fraction(0)
    for d in ref_durs:
        ref_onset.append(acc)
        acc += d
    tgt_onset = []
    acc = Fraction(0)
    tgt_end_times = []
    for d in tgt_durs:
        tgt_onset.append(acc)
        acc += d
        tgt_end_times.append(acc)

    # for each ref note, find which target event is sounding at its onset:
    # the last target event whose onset is <= the ref note's onset.
    mapping = [[] for _ in range(n_tgt)]
    tj = 0
    for ri, ronset in enumerate(ref_onset):
        while tj < n_tgt - 1 and tgt_onset[tj + 1] <= ronset:
            tj += 1
        mapping[tj].append(ri)
    return mapping


def build_corrected_tokens(ref_tokens, mapping, hyphen_after=None):
    """ref_tokens: soprano's REAL consuming tokens for this period (words and
    placeholders, in order, count == number of ref notes for this period).
    mapping: for each target note, which ref token index it maps to.
    hyphen_after: optional parallel list to ref_tokens; hyphen_after[i] is
    True if ref_tokens[i] was followed by a '--' hyphen-join in soprano's
    source text (same word, next syllable) -- re-inserted between two
    consecutive first-occurrences with no placeholder in between.
    Produces the new token list for the target voice's period: the ref
    token appears once (on its first occurrence), subsequent target notes
    mapping to the same ref index get a placeholder continuation token."""
    if hyphen_after is None:
        hyphen_after = [False] * len(ref_tokens)
    out = []
    seen = set()
    first_occurrence_idx = []  # parallel to out: ref idx if this out entry
                                 # was a first-occurrence real word, else None
    pending = []  # real-word ref indices due but not yet placed (deferred
                   # from an earlier target event that had more than one new
                   # syllable due at once) -- NEVER combined into a quoted
                   # multi-word token; each gets its OWN later target event
                   # instead, shifting the rest of the period by one slot.
    def word_still_open(idx):
        """True if, right after ref index idx, the SAME word still has more
        syllables due. By definition (per the corpus convention) a "-"
        placeholder ALWAYS means "more of this word still to come", so a
        run of several "-" in a row (e.g. "wi - - der") stays open the
        whole way through, regardless of how many notes it spans. A "_"
        placeholder or a plain word boundary means the word is done."""
        if idx is None:
            return False
        tok = ref_tokens[idx]
        if tok == "-":
            return True
        if tok in ("_", "__"):
            return False
        if hyphen_after[idx]:
            return True
        return idx + 1 < len(ref_tokens) and ref_tokens[idx + 1] == "-"

    last_ref_pos = None  # most recent ref index consumed at all (real word
                          # OR a ref-side placeholder), used to look ahead
                          # for word_still_open regardless of which branch
                          # last touched the output.
    for covered in mapping:
        # covered: list of ref indices this ONE target event maps to.
        # Any index already seen before (from an earlier target event)
        # only gets a placeholder here (passing-tone subdivision).
        new_indices = [idx for idx in covered if idx not in seen]
        seen.update(new_indices)
        # a ref index that is ITSELF a bare placeholder (soprano already
        # wrote "-"/"_"/"__" there) carries no word -- never combine it
        # with a real word, just silently absorb it (needs no separate
        # representation of its own).
        real_new = [idx for idx in new_indices if ref_tokens[idx] not in ("-", "_", "__")]
        placeholder_new = [idx for idx in new_indices if ref_tokens[idx] in ("-", "_", "__")]
        pending.extend(real_new)
        if pending:
            idx = pending.pop(0)
            out.append(ref_tokens[idx])
            first_occurrence_idx.append(idx)
            last_ref_pos = idx
        elif placeholder_new:
            # this target event lines up exactly with a placeholder ALREADY
            # written in the reference text (1:1 or a genuine ref-side
            # melisma slot) -- keep that exact symbol verbatim, never
            # re-derive it from the word_still_open heuristic (that
            # heuristic is only for slots that don't exist in the
            # reference at all).
            out.append(ref_tokens[placeholder_new[0]])
            first_occurrence_idx.append(None)
            last_ref_pos = placeholder_new[-1]
        else:
            # this whole target event is a passing tone with NO reference
            # counterpart at all (a genuinely extra target note) -- extend
            # whatever word was last assigned. "-"/"--" is ONLY for
            # splitting one word across syllables still to come; once that
            # word is complete, any further extension must use "_"/"__".
            out.append("-" if word_still_open(last_ref_pos) else "_")
            first_occurrence_idx.append(None)

    # any words still queued when the period runs out of target events (a
    # genuine deficit, not just a momentary retard) -- append them as their
    # own trailing tokens rather than lose or combine them; the caller's own
    # length check will flag this period if it doesn't fit the note count.
    for idx in pending:
        out.append(ref_tokens[idx])
        first_occurrence_idx.append(idx)

    # re-insert "--" between two adjacent first-occurrences of consecutive
    # ref indices, when soprano had a hyphen-join there.
    result = []
    for i, tok in enumerate(out):
        result.append(tok)
        cur_idx = first_occurrence_idx[i]
        if cur_idx is None or not hyphen_after[cur_idx]:
            continue
        if i + 1 < len(out) and first_occurrence_idx[i + 1] == cur_idx + 1:
            result.append("--")
    return result
