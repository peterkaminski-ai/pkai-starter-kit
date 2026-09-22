---
name: fair-copy-a-transcript
description: Turns a machine transcript of a call or meeting (a Zoom auto-transcript, captions export, or similar ASR output) into a fair copy — a readable, corrected, attributed record the person can trust, filed with the meeting's other artifacts. Fires on "fair copy this transcript," "clean up the Zoom transcript," "make a record of the call," "turn this into something readable," or when a new raw transcript lands and needs processing. Covers folding fragmentary caption lines into utterances, speaker attribution, a garble table of corrections kept beside the fair copy (never applied silently), flagging load-bearing single words for participant confirmation, privacy flags (minors, non-participants, health, anything a speaker asked left out), an optional subjects/summary companion, filing, and provenance marking. Use whenever raw ASR output needs to become a trustworthy written record.
license: MPL-2.0
---

# Fair copy a transcript

A "fair copy" is the scribal term for the clean copy made from foul papers — a readable, corrected text produced *from* a raw witness, with the raw always kept. That is the job here: take a machine transcript of a call or meeting and produce a text your person can actually trust and use, without ever losing or silently altering what the machine actually heard.

## The menu, not a checklist

These are passes, not steps. Use only what the transcript and its purpose need. A quick internal note might need only folding and attribution. A transcript that will be quoted publicly needs the garble table, privacy flags, and provenance marks. Skip freely; don't run a pass nobody needs.

- **Fold.** Raw ASR output usually arrives as fragments — one caption cue every few seconds, sometimes mid-word. Merge consecutive cues from the same speaker into readable utterances and paragraphs. Break paragraphs on real pauses, not on caption boundaries. Don't touch the words while you do this.
- **Attribute.** Label who said what. Where the transcript's own speaker labels are unreliable (crosstalk, one mic catching two voices, a device labeled with someone else's name), use context to correct the attribution and say so. Note explicitly any stretch where one person is reading someone else's written words aloud — quoting a document, relaying a message, reading chat — since a plain speaker label would misattribute the words to the reader rather than the author.
- **Correct the garbles.** Fix what the machine misheard; never touch what the person actually said. Disfluencies, false starts, and a speaker's own factual errors are not garbles — they're part of the record and stay. Build this as a table, not as silent edits (see below).
- **Flag load-bearing single words.** Some ASR errors land on a single word that an entire sentence's meaning turns on — a name, a number, a "not," a technical term. Where you can't be certain, don't just bracket it and move on: flag it for confirmation with a participant, because guessing wrong on one of these does more damage than leaving it visibly uncertain.
- **Check for privacy.** Read for anything a person present didn't intend to have written down: minors mentioned or on camera, non-participants discussed by name, health details, financial details, anything a speaker asked to keep off the record. See the privacy section below — this pass is not optional whenever the fair copy might leave the person's own hands.
- **Write the companion, if wanted.** A subjects-or-summary document reorganizes the call by topic rather than by chronology, useful when the fair copy itself is long. Optional, and only as good as the fair copy it's built from.

## The garble table

Keep a table of every correction, beside the fair copy, as its own artifact — never folded invisibly into the text with no trace. One row per fix: what the machine wrote, what you believe was actually said, and how confident you are.

- **Confident fixes** (a name spelled correctly elsewhere in the same conversation, a term confirmed by chat or a shared document, something the person confirms) can be applied in the fair copy's running text — but still logged in the table. The table is what lets anyone reconstruct the raw from the corrected text.
- **Uncertain reconstructions** go in the fair copy in `[square brackets]` — your best guess, visibly marked as a guess — and in the table as uncertain. State the bracket convention once, up front, in the fair copy itself: bracketed words are reconstructions, not verified.
- **Unreconstructable garbles** are left exactly as transcribed and listed in the table as "left alone," so a later reader (or the person themself) can take another pass at them.
- Never silently apply a fix nowhere but in the text. The transcript is a machine's guess at what was said, and the fair copy is your best correction of that guess — both facts need to stay visible, or the record stops being trustworthy the moment someone spot-checks it against the audio.
- When a participant is available, it's often worth walking the "left alone" list with them directly — one item, one question, with the surrounding words quoted for context. This tends to resolve most of what looked unrecoverable, cheaply.

## Privacy flags

Before a fair copy travels anywhere beyond the person who owns the recording, read it once specifically for what shouldn't travel:

- **Minors** mentioned, described, or visible/audible on the call.
- **Non-participants** — named or identifiable people who weren't present and didn't consent to being discussed.
- **Health, financial, or other sensitive personal detail**, about anyone, participant or not.
- **Anything a speaker asked to keep off the record**, explicitly or by clear implication.
- Where a machine transcript kept running past the point recording stopped (or started before recording began), check whether anything in that gap made it into the fair copy or any summary built from it — material caught only by captions, never by the recording, is easy to miss and easy to forget was never meant to be kept.

The right move on finding something is almost always to **flag it, not to unilaterally move or delete it** — note it clearly, and ask the person directly: "is there anything here you want left out before this goes anywhere?" Don't guess at what someone would want redacted; ask. The exception is a live secret (a password, a key) spoken or shown in the clear — that's urgent enough to flag immediately and separately from the rest of the review, with a note that rotating the secret, not editing the document, is the actual fix.

## Filing

Keep the raw transcript, the fair copy, the garble table (corrections log), any companion documents (chat log, shared notes, an after-action summary), and a note of any privacy flags together, in one folder per meeting — the boxes beside the book. The raw transcript is never modified; every derived document should say plainly what it was derived from and what was done to it.

## Provenance

Every fair copy should be marked with how confident it is:

- **"Transcribed, unverified"** — corrected for garbles as best you could, but no participant has confirmed the fixes.
- **"Confirmed by a participant"** — someone who was actually on the call has reviewed the corrections (or at least the uncertain ones) and signed off.

Don't let a fair copy read as more authoritative than it is. If nobody who was there has checked it, say so, right on the document.

## What done looks like

A fair copy is done when: fragmentary caption lines are folded into readable utterances; speakers are correctly attributed, with any read-aloud-on-someone-else's-behalf stretches noted; every correction to the machine's wording is logged in a garble table, not just silently applied; single load-bearing words you couldn't verify are flagged for confirmation, not guessed past; the transcript has been read once specifically for privacy concerns and anything found has been flagged to the person, not acted on unilaterally; the file sits with the meeting's other artifacts; and the document states plainly whether anyone who was actually on the call has confirmed it.

## What this skill never does

- It never edits or replaces the raw transcript. The raw is the source of truth, permanently.
- It never silently changes what a speaker said. Only the machine's mishearing gets corrected — disfluencies, false starts, and factual errors are the speaker's own and stay.
- It never removes or redacts a privacy concern on its own judgment. It flags; the person decides.
- It never presents an unconfirmed correction as settled fact. Uncertainty stays visible in the document, not just in a separate log nobody reads.
