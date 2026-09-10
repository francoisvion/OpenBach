import re
import sys
from fractions import Fraction
from pathlib import Path

# ---------- parsing helpers ----------

def extract_var(text, name):
    m = re.search(
        rf"^[ \t]*{name}\s*=\s*(?:\\lyricmode\s*)?(?:\\relative\s+\S+\s*)?(?:\\transpose\s+\S+\s+\S+\s*)?\{{",
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
    # Dutch note names: "es" (E-flat) and "as" (A-flat) are irregular
    # elisions -- NOT decomposable as base-letter + "es"-suffix (that
    # decomposition only works for their redundant spellings "ees"/"aes")
    # -- must be matched as their own root before the generic letter+
    # suffix* pattern, or they silently fail to match at all and the note
    # gets dropped from the event stream entirely (found via BWV_274: a
    # deficit that didn't exist -- "es'8" as a bracket opener was being
    # skipped, mis-attributing the bracket to the PRECEDING note).
    r"^((?:as|es|[a-grs])(?:is|es)*)([',]*)[!?]*(\d+)?(\.*)(~?)(\\[a-zA-Z]+)?$",
    re.IGNORECASE,
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
    # a rest/skip glued straight onto the previous note's duration with no
    # separating space (e.g. "e'2.r4") merges into one unmatchable token
    # and silently drops the real note entirely (found via BWV_41_6 alto:
    # a false "1 note short" report on a period the user confirmed correct
    # by ear/eye) -- insert the missing space before splitting.
    body = re.sub(r"([0-9.])(?=[rs]\d)", r"\1 ", body)
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
        if tok == "~":
            # a tie right after "]" (e.g. "[b]~") lands here as its own
            # token once the [ ] spacing pass above separates it from its
            # note -- mark the note we just closed as tied. NOTE: an
            # earlier attempt at this (see git history) paired it with an
            # extra "never collapse a bracket group touched by a tie" rule
            # in the old groups_to_events()/collapse-raw model and
            # regressed the verified pool -- that rule doesn't apply here:
            # beam_events() already merges tie-touching groups correctly
            # at the group level (see its docstring), so this plain flag
            # set is the complete, minimal fix under the current model.
            if events:
                events[-1]["is_tie"] = True
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
            folded[-1]["tie_merged"] = True
            continue
        folded.append(dict(e))
        folded[-1].setdefault("tie_merged", False)
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


TWEAK_MARKUP_RE = re.compile(r"\\tweak\s+\S+\s+\S+\s+\\markup\s*\{")


def strip_tweak_markup(body):
    """"\\tweak PROPERTY \\markup{ ... }" (used instead of a plain quoted
    string when the verse-number label needs its own font size, e.g.
    "\\markup{\\concat{\\small "Texte 1. " "Du"}}") has a VALUE that spans
    multiple whitespace-separated pieces with balanced braces -- the
    simple "\\tweak PROPERTY VALUE" regex below only eats the first \\S+
    token of it (just "\\markup{\\concat{\\small"), leaking the rest as
    bogus "words" (found via BWV_77_6: exactly this pattern inflated the
    real-token count for every period after it, not just the one
    containing the markup, since token-to-period boundaries shift once
    the count upstream is wrong). Only the LAST quoted string inside is
    ever actually sung (earlier ones are pure verse-number decoration,
    same convention as the plain-string case below) -- replace the whole
    span with just that quoted string so it flows through as one normal
    token."""
    out = []
    i = 0
    while True:
        m = TWEAK_MARKUP_RE.search(body, i)
        if not m:
            out.append(body[i:])
            break
        out.append(body[i:m.start()])
        depth = 0
        k = m.end() - 1
        while True:
            if body[k] == "{":
                depth += 1
            elif body[k] == "}":
                depth -= 1
                if depth == 0:
                    break
            k += 1
        inner = body[m.end():k]
        quoted = re.findall(r'"[^"]*"', inner)
        out.append(" " + (quoted[-1] if quoted else "") + " ")
        i = k + 1
    return "".join(out)


def lyric_tokens_with_hyphens(body):
    """Like lyric_tokens, but also returns two parallel lists of booleans:
    hyphen_after[i] is True if tokens[i] is immediately followed by a
    '--' hyphen-join marker in the source (same word, next syllable).
    underline_after[i] is True if tokens[i] is immediately followed by a
    '__' marker -- confirmed by the user: "__" draws the extender line
    under the PRECEDING syllable but consumes NO note of its own (unlike
    "_", which consumes exactly one note with no line drawn). "__" can
    appear after any token, real word or "_" placeholder alike, and does
    NOT require a following "_" ("word __ next" is valid: it just draws
    the line from "word" onward). Both '--' and '__' are therefore
    stripped from `tokens` here, same as ties are invisible in the note
    stream -- they never consume a note-slot on their own.

    Two more zero-width things get stripped before tokenizing at all:
    "\\tweak PROPERTY VALUE" (pure engraving noise, e.g. positioning a
    printed verse number) and "\\set NAME = VALUE" (e.g. "\\set stanza =
    N") -- neither is a syllable. A quoted "..." string IS a real syllable
    (LilyPond's own way of writing a multi-word single syllable, e.g. a
    verse-number label fused with the first word: "16. Drum") and must be
    kept as ONE token even though it contains whitespace -- a naive
    body.split() breaks it into two bogus half-tokens instead.

    "\\repeat unfold N {\\skip DURATION}" is how a stanza's text is made
    to start N notes late (the earlier notes carry no syllable for this
    stanza) -- each \\skip consumes one note-slot with no text, exactly
    like this corpus's own "_" placeholder, so it's expanded to N "_"
    tokens rather than being read as bogus words."""
    body = strip_tweak_markup(body)
    body = re.sub(r"\\tweak\s+\S+\s+\S+\s*", " ", body)
    body = re.sub(r"\\set\s+\S+\s*=\s*\S+\s*", " ", body)
    body = re.sub(
        r"\\repeat\s+unfold\s+(\d+)\s*\{\s*\\skip\s*\S+\s*\}",
        lambda m: " ".join(["_"] * int(m.group(1))),
        body,
    )
    raw = re.findall(r'"[^"]*"|\S+', body)
    tokens = []
    hyphen_after = []
    underline_after = []
    for tok in raw:
        if tok == "--":
            if hyphen_after:
                hyphen_after[-1] = True
            continue
        if tok == "__":
            if underline_after:
                underline_after[-1] = True
            continue
        tokens.append(tok)
        hyphen_after.append(False)
        underline_after.append(False)
    return tokens, hyphen_after, underline_after


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


def build_corrected_tokens(ref_tokens, mapping, hyphen_after=None, underline_after=None):
    """ref_tokens: soprano's REAL consuming tokens for this period (words and
    placeholders, in order, count == number of ref notes for this period;
    "--" and "__" markers are NOT in here -- lyric_tokens_with_hyphens
    already stripped them into hyphen_after/underline_after, since neither
    consumes a note of its own).
    mapping: for each target note, which ref token index it maps to.
    hyphen_after: optional parallel list to ref_tokens; hyphen_after[i] is
    True if ref_tokens[i] was followed by a '--' hyphen-join in soprano's
    source text (same word, next syllable) -- re-inserted between two
    consecutive first-occurrences with no placeholder in between.
    underline_after: optional parallel list to ref_tokens; underline_after[i]
    is True if ref_tokens[i] was followed by a '__' extender-line marker in
    soprano's source text -- re-inserted right after that token wherever it
    is emitted (unlike "--", it doesn't need the next output token to be
    any particular thing: "__" just says "draw the line here").
    Produces the new token list for the target voice's period: the ref
    token appears once (on its first occurrence), subsequent target notes
    mapping to the same ref index get a placeholder continuation token."""
    if hyphen_after is None:
        hyphen_after = [False] * len(ref_tokens)
    if underline_after is None:
        underline_after = [False] * len(ref_tokens)
    out = []
    seen = set()
    first_occurrence_idx = []  # parallel to out: ref idx this out entry
                                 # corresponds to (real word OR a ref-side
                                 # placeholder), else None for a locally
                                 # invented placeholder with no ref idx.
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
        if tok == "_":
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
        # wrote "-"/"_" there -- "__" never appears here, it was already
        # stripped into underline_after) carries no word -- never combine
        # it with a real word, just silently absorb it (needs no separate
        # representation of its own).
        real_new = [idx for idx in new_indices if ref_tokens[idx] not in ("-", "_")]
        placeholder_new = [idx for idx in new_indices if ref_tokens[idx] in ("-", "_")]
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
            # reference at all). NOTE: swapping this to check BEFORE
            # `pending` (so a ref-side placeholder can never be bumped by a
            # deferred word) was tried as a fix for bug #2 (placeholder
            # silently dropped when a deficit and a ref placeholder land on
            # the same event) -- regressed the verified pool further
            # (96->80). Bug #2 is still open; don't retry this exact swap.
            out.append(ref_tokens[placeholder_new[0]])
            first_occurrence_idx.append(placeholder_new[0])
            last_ref_pos = placeholder_new[-1]
        else:
            # this whole target event is a passing tone with NO reference
            # counterpart at all (a genuinely extra target note) -- extend
            # whatever word was last assigned. This invented placeholder
            # always consumes exactly the 1 note it stands for. Previously
            # emitted "-" here when word_still_open() (vs "_" otherwise) --
            # but a bare single "-" never appears anywhere in the verified
            # corpus (confirmed by grepping the fully-audited "1 ligne
            # soprano" pool: zero matches), because word-continuation is
            # already fully handled by the separate hyphen_after/"--"
            # mechanism below -- this branch's job is only to mark "one
            # extra silent note", which is always "_" regardless of
            # whether the word is still open. Found via BWV_366 (dash
            # miscounted as a real syllable) and reconfirmed generating
            # BWV_79_6 from scratch.
            out.append("_")
            first_occurrence_idx.append(None)

    # any words still queued when the period runs out of target events (a
    # genuine deficit, not just a momentary retard) -- append them as their
    # own trailing tokens rather than lose or combine them; the caller's own
    # length check will flag this period if it doesn't fit the note count.
    for idx in pending:
        out.append(ref_tokens[idx])
        first_occurrence_idx.append(idx)

    # re-insert "--" right after a token whose ref idx had a hyphen-join in
    # soprano's source text, and "__" right after any token whose ref idx
    # had an extender -- NEITHER needs an adjacency condition on what comes
    # next. A hyphen-join marks "this word keeps going," full stop; that
    # stays true even when THIS voice has its own extra "_" passing-tone
    # placeholder sitting between the two syllables (a melisma unique to
    # this voice doesn't change which word is being sung) -- the corpus
    # already shows this exact shape ("gro -- _ ssen"). The previous
    # adjacency check (only emit "--" if the very next output token was
    # literally the next ref index) silently dropped the hyphen whenever a
    # placeholder intervened, making the SAME word appear hyphenated in one
    # voice and not in another despite being the identical word every time
    # -- found generating BWV_79_6 fresh and confirmed against the user's
    # hand-corrected reference (kept for ALL voices, not soprano-only, by
    # the exact same reasoning).
    result = []
    for i, tok in enumerate(out):
        result.append(tok)
        cur_idx = first_occurrence_idx[i]
        if cur_idx is None:
            continue
        if underline_after[cur_idx]:
            result.append("__")
        if hyphen_after[cur_idx]:
            result.append("--")
    return result


def verbatim_with_hyphens(tokens, hyphen_after, underline_after=None):
    """Reproduce a token list exactly as it would appear in real source
    text, reinserting the "--" hyphen-join and "__" extender-line markers
    between consecutive tokens per hyphen_after/underline_after. Used when
    a period can't be reconciled and we fall back to a literal copy of the
    reference words -- without this, the fallback silently drops every
    "--"/"__" (lyric_tokens_with_hyphens strips them out into the separate
    arrays in the first place, so a plain list(tokens) never has them)."""
    if underline_after is None:
        underline_after = [False] * len(tokens)
    out = []
    for i, tok in enumerate(tokens):
        out.append(tok)
        if i < len(underline_after) and underline_after[i]:
            out.append("__")
        if i < len(hyphen_after) and hyphen_after[i]:
            out.append("--")
    return out


def merge_tied_events(events):
    """For generation pipelines building a voice's event list from music21
    (each event a dict with a 'dur' and a 'tie' key: None/'start'/'stop').
    \\lyricsto silently SKIPS a tied-continuation note (tie=='stop') -- it
    never receives its own syllable, unlike a "_" placeholder note. Left as
    a separate ref/target event, it causes a silent off-by-one that
    corrupts every token after it in that period (LilyPond warns
    "unterminated hyphen; removing" right at the desync point, and the
    period's last word or two silently vanish from the render). Fold each
    tie=='stop' event's duration into the PRECEDING event so the merged
    list has exactly as many entries as \\lyricsto will actually assign
    syllables to -- use this MERGED list for period-splitting / align_period
    / build_corrected_tokens, while the actual notation output still emits
    both tied notes separately (with a literal "~") since that's real
    engraving, not a lyric concern. Found generating BWV_66_6 (soprano had
    a tied pair inside a fermata-bound period; tenor also had one, in a
    different period, of the same piece)."""
    out = []
    for e in events:
        if e.get('tie') == 'stop' and out:
            out[-1] = dict(out[-1])
            out[-1]['dur'] = out[-1]['dur'] + e['dur']
        else:
            out.append(e)
    return out


def build_corrected_tokens_gen(ref_tokens, mapping, tgt_events, hyphen_after=None,
                                underline_after=None, beam_skip_max_dur=None):
    """Generation-pipeline variant of build_corrected_tokens (music21 -> fresh
    file, NOT reading pre-existing corpus text -- kept separate so the
    original, battle-tested function used by the 169-file reconciliation
    tooling is never touched by this).

    Same contract as build_corrected_tokens, PLUS: tgt_events is this
    period's list of target-voice event dicts (each needs a 'dur' key, a
    Fraction of a whole note) in the same order as mapping. Returns
    (tokens, bracket_indices) where bracket_indices is the set of tgt_events
    indices that must be rendered as `[note]` (manually beamed to the
    PRECEDING note) in the generated music AND get NO lyric token at all --
    not even "_".

    Why: confirmed empirically (BWV_66_6 pilot, user's hand correction) that
    in this corpus's LilyPond setup (`\\autoBeamOff` + manual beams),
    \\lyricsto automatically skips a note that is the non-first member of a
    manual beam group, exactly like it skips a tied note. An invented
    "extra note, no reference syllable" placeholder that is short enough to
    beam with its preceding note (<= an eighth, by default) should be
    beamed+skipped rather than given a bare "_": every bracket the user
    added was on an eighth note following another eighth note; every extra
    note the user left as a bare "_" was a quarter or longer (doesn't
    naturally beam).

    "__" (extender line) is added automatically after a real word, WITHOUT
    needing it in the passed-in underline_after, whenever: (a) that word's
    own target note is tied (tie=='start' -- the sustain is real, draw the
    line), or (b) at least one bare "_" (a NON-bracket-skipped invented
    placeholder) immediately follows it before the next real word. If every
    trailing invented placeholder for that word got bracket-skipped (none
    left bare), no "__" is added -- the bracket notation alone already
    shows the extension. Reverse-engineered from BWV_66_6's diff: every
    word followed by a surviving bare "_" got "__"; every word whose extra
    notes were fully absorbed into brackets did not, even when it had 2-3
    extra notes originally. Confirmed by exact note-count arithmetic on
    all 4 voices, not guessed."""
    if beam_skip_max_dur is None:
        beam_skip_max_dur = Fraction(1, 8)
    if hyphen_after is None:
        hyphen_after = [False] * len(ref_tokens)
    if underline_after is None:
        underline_after = [False] * len(ref_tokens)
    auto_underline = set()
    out = []
    seen = set()
    first_occurrence_idx = []
    bracket_indices = set()
    pending = []
    last_real_idx = None
    prev_bracketed = False  # a beam bracket attaches to the single note

    # immediately before it -- 2 consecutive invented placeholders can NOT
    # both be bracket-skipped (LilyPond errors "already have a beam"; the
    # 2nd bracket has no valid unbracketed anchor to beam from). Confirmed
    # against BWV_66_6's user correction: 3 consecutive eighth-note
    # placeholders got bracket/bare/bracket, never bracket/bracket/bracket
    # -- alternate, don't chain.
    for ei, covered in enumerate(mapping):
        new_indices = [idx for idx in covered if idx not in seen]
        seen.update(new_indices)
        real_new = [idx for idx in new_indices if ref_tokens[idx] not in ("-", "_")]
        placeholder_new = [idx for idx in new_indices if ref_tokens[idx] in ("-", "_")]
        pending.extend(real_new)
        if pending:
            idx = pending.pop(0)
            out.append(ref_tokens[idx])
            first_occurrence_idx.append(idx)
            last_real_idx = idx
            prev_bracketed = False
            if tgt_events[ei].get("tie") == "start":
                auto_underline.add(idx)
        elif placeholder_new:
            # this target note lines up with a placeholder the REFERENCE
            # voice already carries (e.g. soprano's own bracket-skipped
            # melisma note) -- this voice's OWN note there still gets an
            # independent bracket-skip check: each voice decides for
            # itself whether ITS note is short enough to beam+skip,
            # regardless of why the reference happens to have no word
            # there. Found via BWV_66_6 alto/tenor period2 (a direct 1:1
            # note-count match bypasses align_period entirely, landing
            # straight on the reference's own placeholder slot -- that
            # slot was silently never bracket-checked before this fix).
            if tgt_events[ei]["dur"] <= beam_skip_max_dur and not prev_bracketed:
                bracket_indices.add(ei)
                prev_bracketed = True
            else:
                out.append(ref_tokens[placeholder_new[0]])
                first_occurrence_idx.append(placeholder_new[0])
                prev_bracketed = False
                if last_real_idx is not None:
                    auto_underline.add(last_real_idx)
        else:
            if tgt_events[ei]["dur"] <= beam_skip_max_dur and not prev_bracketed:
                bracket_indices.add(ei)
                prev_bracketed = True
            else:
                out.append("_")
                first_occurrence_idx.append(None)
                prev_bracketed = False
                if last_real_idx is not None:
                    auto_underline.add(last_real_idx)

    for idx in pending:
        out.append(ref_tokens[idx])
        first_occurrence_idx.append(idx)

    result = []
    for i, tok in enumerate(out):
        result.append(tok)
        cur_idx = first_occurrence_idx[i]
        if cur_idx is None:
            continue
        if underline_after[cur_idx] or cur_idx in auto_underline:
            result.append("__")
        if hyphen_after[cur_idx]:
            result.append("--")
    return result, bracket_indices
