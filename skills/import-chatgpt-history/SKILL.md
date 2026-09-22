---
name: import-chatgpt-history
description: Helps a person bring an exported ChatGPT conversation history into their house (a markdown-based knowledge base) so the agent can learn from it and the person can find things again. Fires on "import my ChatGPT history", "bring in my chat history", "I exported my conversations from ChatGPT", "get my data home", "add my old chats to my house", "I have a ChatGPT export, what do I do with it". Covers requesting/receiving the export, what the zip contains and its known gotchas, where the raw export and its processed form live in the house, converting conversations to one markdown file each, and a consent-gated distillation pass into durable memory — with a privacy pass for sensitive content first. Not for general knowledge-base design, other import formats, or memory from non-ChatGPT sources.
license: MPL-2.0
---

# Import ChatGPT History

## Purpose

A ChatGPT export is a person's own history talking to another assistant — sometimes years of it. Bringing it home does two separate things, and it helps to keep them separate in your head: it makes the history *findable* again (an archive the person can search), and it makes the history *known* to you (durable facts you carry into future sessions without being re-told). Both are worth doing; neither should be rushed, because the same corpus that holds a person's hobbies also holds their health history, their finances, and other people's names.

## Before you start

- Confirm the person actually wants this now, and roughly how much of the history — everything, or a slice. This is their record; don't assume "all of it" is the right first move.
- Ask where the export will land on disk before you touch anything. You'll want a location with enough room — these exports can run from tens of megabytes to well over a gigabyte, and they are not something to commit into a git repository whole.
- Check the current export format before you build anything against it. OpenAI's export shape has changed before and will change again — confirm what's actually in the zip you have rather than assuming last year's structure holds.
- If a conversion tool for this export format already exists in the house from an earlier import, use and extend it rather than writing a new one from scratch — this is meant to be a repeatable pipeline, not a one-off script per export.

## Requesting and receiving the export

- The person requests the export from their ChatGPT account settings; it is prepared server-side and typically takes some hours to arrive, not minutes. Tell them to expect the wait.
- When it arrives, unzip it rather than working from the zip directly. A typical export contains: one or more JSON files holding the actual conversation payload (each conversation stored as a tree of message nodes, not a flat transcript — you walk it from the root to reconstruct reading order); a folder of voice-conversation audio, if the person used voice mode; and a folder of uploaded or attached files, images included.
- As of this writing, ChatGPT's export has not included "Projects" (or equivalent custom-workspace content) — check whether that's still true for the export you're holding, and tell the person plainly if something they expected isn't there rather than silently omitting it.
- Get the date range and rough conversation count from the export metadata before you process anything, and report it back to the person. It's a useful sanity check later — if the processed count doesn't match, something broke.
- A single export can span years and thousands of conversations, but most of it tends to be short exchanges rather than a handful of long threads. Don't assume you're walking into a few deep conversations to read closely — plan for many small ones instead.

## Where it goes in the house

- Give the export its own place under the house, kept separate from the person's hand-curated notes. Think of it as boxes beside the book: the raw, unzipped export is the sealed boxes — kept intact, gitignored if the house is version-controlled, never edited in place — and the processed markdown is the book the person and you actually read and search. Don't mix machine-made notes into hand-curated space; if something distilled from the archive earns a permanent home there later, promote just that piece, deliberately.
- Don't commit the raw export itself to a git history. It's large, it's personal, and it doesn't need version control — the processed form is what evolves.
- If the person exports again later — a fresh pull months on — treat it as a new, non-overlapping slice rather than assuming it's a clean superset of the last one; check before you decide whether the new export replaces or supplements what's already in the house.

## Processing: one file per conversation

- Convert the export into one markdown file per conversation, each with frontmatter carrying at minimum the conversation's date and title, organized into a sensible folder structure (by month works well for a multi-year archive). This step is purely mechanical — no model calls needed — and should be idempotent, so re-running it after a fresher export doesn't duplicate or corrupt anything already converted.
- Build a simple index alongside the notes (a README or top-level index file with counts, date range, and folder links) so the person can orient without opening every file.
- Watch for two format gotchas that show up in real exports and are easy to miss:
  - Markdown pulled from a chat UI can carry invisible private-use control characters embedded around structured UI blocks. They won't match an obvious text search for the visible word next to them; filtering by Unicode private-use codepoint ranges catches them.
  - If you or the person use a browser-extension exporter to produce standalone HTML instead of the JSON export, check whether the result is actually self-contained — some pull rendering libraries live from a CDN (so it degrades offline) and quietly embed a link back to the live, hosted conversation, which leaks an identifier if the file is later shared. Flag this before anything gets sent outside the house.

## Distilling into memory — with consent, and a privacy pass first

- Don't skip straight from "converted" to "the agent now knows this." Distillation — reading conversations and writing durable facts about the person — is a separate, deliberate step, and it needs the person's explicit go-ahead before it happens, not just before it's promoted.
- Read the converted notes in batches rather than all at once; for a large corpus, sub-agents working batch by batch keep this tractable and let you validate the approach on one batch before committing to the whole run.
- For each conversation (or batch), extract only what's useful: a short summary, topic tags, named entities, and candidate durable facts about the person — each fact linked back to the conversation it came from. That backlink matters: a fact without its source is a rumor.
- Run a privacy pass before any fact gets treated as safe to keep or promote. Flag, rather than file automatically: anything that looks like a secret or credential, other people's names and identifying details, health information, and financial information. These get surfaced to the person for a decision, not written into standing memory on your own judgment.
- Keep the distillation's output as ordinary markdown, backlinked to source, so a person can always open a file and see exactly where a claim about them came from.
- Validate your extraction approach on one small batch before running it over the whole corpus — a bad prompt caught early is a rewrite; caught late, it's a corpus-wide cleanup.

## What "done" looks like

- The raw export is unzipped and resting in its own place, untouched, not committed to git.
- Every conversation has become one markdown file with frontmatter, organized and indexed, and the converted count matches the export's own count.
- A privacy pass has been run over anything distilled, with sensitive categories flagged and held for the person's decision rather than filed.
- With consent, a first set of durable facts about the person exists as backlinked markdown, and the person has seen it before you treat any of it as settled knowledge.
- The person can find a specific old conversation again, and you can answer a question about them by pointing at where you learned it.

## What this skill never does

- Never treats "the export exists" as consent to distill it into standing memory — that's a separate ask.
- Never auto-files anything flagged as sensitive (secrets, other people's identities, health, money) into memory without a human decision.
- Never sends the raw export, or anything derived from it, off the person's own systems.
- Never invents a fact about the person that isn't backed by a specific line in the source conversation.
- Never overwrites or mixes into the person's hand-curated notes without their say-so.
