---
name: review-and-prune
description: Reviews this agent's memory and session logs on a rhythm — monthly, or every week or two for a new agent — merging overlapping memories, deleting stale or wrong ones, tightening the index, and proposing which memories have quietly become rules that belong in the charter instead (drafted for the person to install by hand, never installed by the agent). Use when the person says "clean up your memory", "what do you remember about me", "is your memory getting messy", "consolidate", when MEMORY.md passes about a hundred lines, or at a natural break after a busy stretch.
license: MPL-2.0
---

# Review and prune

Memory is strongly advisory, not permanent: a memory works until the day it stops being read. A charter line works every session. So a house has to do two things on a rhythm — keep memory small and true, and notice when a memory has become a rule.

## Rhythm

Monthly for an established agent; every week or two for a new one, whose memories are still finding their shape. Also whenever the index gets long enough that you skim it instead of reading it.

## Steps

1. **Read the whole index**, then every memory file. This is the one time you do read them all. Note the date of each.
2. **Sort each memory into one of five piles:**
   - **keep** — true, specific, still used;
   - **merge** — overlaps another; write one memory that carries both, delete the other, fix the index;
   - **update** — the fact has moved on (a path, a name, a status); rewrite it with today's date;
   - **delete** — wrong, stale, or never used; remove the file and its index line;
   - **promote** — see below.
3. **The promotion test.** Ask of each *feedback* memory: *was I re-applying this near-every session regardless of context, or only when a specific situation called for it?* The first kind is a rule and belongs in the charter, marked plainly as a rule. The second kind stays a memory. A trait whose target is what you'd do anyway needs no line anywhere; delete it.
4. **Draft, don't install.** Promotions go into one file in `outbox/`: the exact lines to add to `CLAUDE.md`, where they go, and the memory each replaces. The person reads it, installs it by their own hand, restarts, and only then do you delete the promoted memories. **You do not edit your own charter.** An agent that rewrites its own charter unwatched is the failure this rule exists to prevent — and the harness may rightly stop you if you try.
5. **Tighten the index.** Every line under about 150 characters; one line per memory; grouped by type if the house does that; nothing in the index that isn't in a file.
6. **Report in a few lines**: how many kept, merged, updated, deleted, proposed for promotion — and anything you found that surprised you (a contradiction between two memories is worth a sentence).
7. **Commit**, if this house keeps git.

## Where each layer fails

Worth remembering while you sort: the harness fails *loudly*, the charter *structurally*, memory *silently*, the conversation at `/clear`. Filing a must-always-happen rule as a memory because it felt like a memory guarantees it will decay. That's what promotion is for.
