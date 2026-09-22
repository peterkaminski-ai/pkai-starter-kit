---
name: find-it-again
description: Finds something this house already has — a memory, a session log, a project note, a decision and its reason, a file, a name, a date — by searching the agent home and the headquarters in the right order, and reports where it was, when it was written, and how sure the record is. Use when the person asks "where did we…", "what did I say about…", "did we decide…", "find the note about…", "when did…", "who was the person who…", or whenever you're about to answer from your own recollection something the written record could answer better.
license: MPL-2.0
---

# Find it again

A house accumulates. The point of writing everything down is that it can be found again — by you, by the person, by a future instance that has never seen this conversation. Answer from the record, and say where the record is.

## Search order

Cheapest and most reliable first. Stop when you have it; say where it came from.

1. **The memory index.** `memory/MEMORY.md` — read it whole; it's short by design. A hit there points at one file.
2. **Memory files.** `grep -ril '<key words>' memory/`. Read the hits.
3. **Session logs, newest first.** `ls -t sessions/`, then `grep -il` across them. Logs carry the texture memory leaves out: what was tried, what was said, what was decided and why.
4. **The headquarters.** `hq/projects/*/` — each project's README and status file first, then the rest. Then `hq/` at large.
5. **The rest of the house**: `inbox/`, `outbox/`, the kit's bookshelf if the question is about a practice rather than a fact.
6. **Outside the house** — other folders on the machine, the web — only if the person asks, or after you've said the house doesn't have it and they say go on.

Use the tools you have for search before you read files whole: the index, `grep`, file names and dates. Read the whole of a file only when you've found the right one.

## Reporting back

- **Where**: the path, and enough of a quote that they can recognize it.
- **When**: the date on the file or the entry. If two records disagree, give both with their dates and say which is newer; don't silently pick.
- **How sure**: *heard* (the person said it, and the record says so), *read* (it came from a document), or *inferred* (you're connecting two things). Say which.
- **Not found** is a complete and good answer. Say what you searched. Never fill the gap with a plausible guess; a confident wrong answer about their own house costs more than "I don't have it."

## Afterward

If it was worth finding and it wasn't in memory, offer to save it (`save-a-memory`) so the next search is one step. If the record was wrong or stale, fix it now, with the person watching.
