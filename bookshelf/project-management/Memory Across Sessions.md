# Memory Across Sessions

What survives `/clear`. What lives where. How to keep the memory system useful instead of letting it become noise.

## Two layers, one home

What your agent carries from session to session lives in two places, both in your agent home: its charter, `CLAUDE.md`, and its `memory/` folder. **The memory of record is the agent home's `memory/` folder**, in git if your house keeps git — the house's settings turn off Claude Code's own auto memory, and the charter says `memory/` wins if the two ever disagree. Claude Code's defaults still apply in a folder you open without your agent; the table notes where they differ.

| Layer | Where | Loaded when |
|---|---|---|
| `CLAUDE.md` | At the root of your agent home: your agent's charter | Every session start |
| `MEMORY.md` and memory files | In a house: `memory/` in the agent home, in git. Claude Code's default elsewhere: `~/.claude/projects/<project-path>/memory/` (local-only auto memory) | Every session start, then individual files when relevant |

When a session starts, your agent reads its charter, then `MEMORY.md` and whichever memory files are relevant. By the time you type your first message, the agent already knows who it is, how you like to work, and whatever you've asked it to remember from past sessions.

## `CLAUDE.md` — your agent's charter

In a house, `CLAUDE.md` is your agent's charter: its persona. Setup copied it into the agent home from the persona you chose and filled it in. It's yours: you install it, and you change it, by hand. Your agent never edits its own charter; when it thinks something belongs there, it drafts the change for you to read and install yourself (`review-and-prune` does this).

Common contents:

- Who your agent is, and how it works with you.
- Where the work lives: your HQ and its `projects/`.
- What it may do on its own, and what needs your yes.
- The safety sections, which stay as written.
- Any rule that must hold every session — the kind memory is too weak for.

Keep it short. CLAUDE.md is loaded at the start of every session, so it costs context window every time. A 200-line CLAUDE.md is fine. A 2,000-line one is leaking.

When CLAUDE.md needs to grow beyond a few screens, link out to other files. CLAUDE.md is the index, not the encyclopedia.

Your preferences ("I prefer terse responses," "always use British English spelling") don't need a file of their own. Tell your agent, and it saves them as memories.

A project with a repo of its own — the exception, not the default (see [Starting a New Project](Starting%20a%20New%20Project.md)) — may carry its own `CLAUDE.md`, scoped to that project: what it is, its folder layout, rules like "always run tests before committing," for anyone who opens it without your agent. Keep it to the project, never your agent's persona. The HQ, and every project folder inside it, never gets one; your agent brings itself along.

## `MEMORY.md` and memory files — the persistent context

This is the layer that grows over time. Memory files are markdown notes the agent writes to itself, indexed by `MEMORY.md`. Each conversation starts by reading the index and pulling in whatever's relevant.

In a house, memory files live in the agent home's `memory/`, committed to its private git history and never pushed anywhere. Outside a house, Claude Code's auto memory keeps them **local-only** — in `~/.claude/projects/<project-path>/memory/`, not in the repo, not pushed to GitHub, not visible to anyone else. Either way, they are yours.

The kinds of memory worth saving (the kit's personas add a fifth, **fact**, for plain facts about your world):

- **user** — who you are, your role, your background. Helps the agent calibrate.
- **feedback** — corrections you've given and confirmations you've made. "Don't use em-dashes." "When I push back, listen." "The single-PR approach worked here."
- **project** — what's in flight, what's blocked, what was decided, what's next.
- **reference** — pointers to things outside this project. "Bugs go in Linear project FOO." "Latency dashboard is at grafana.example/d/api."

What *not* to save:

- Things derivable from the code or house — the agent can just read those.
- Git history — `git log` is authoritative.
- Debugging fixes — the fix is in the code; the context is in the commit message.
- Ephemeral task state — that belongs in your in-session task tracking, not in memory.

## How to ask the agent to manage memory

You can be direct. The patterns that work:

- "Remember that I prefer X."
- "Forget that thing about Y."
- "Consolidate your memory from this session."
- "What do you remember about me?"
- "Update the memory for the foo project — we decided Z."

The agent figures out which file to update, or whether to create a new one, or whether the memory contradicts an existing entry that needs to be replaced.

## Memory hygiene

The goal: memory you can read rather than skim, with each fact in exactly one place, kept up to date. What goes wrong is overlap, not the number of files: two files on the same topic, some of them contradicting each other.

- **One fact, one file.** A house built from the kit saves each durable fact as one small file with one index line (`save-a-memory`). A busy house passes ten files in its first weeks, and that's healthy: many small files on different topics are fine; two files on the same topic are the problem.
- **Organize by topic, not by date.** `project_my_website.md` beats `memory_2026-03-10.md`, `memory_2026-03-11.md`, `memory_2026-03-12.md`.
- **Update, don't accumulate.** When something changes, update the existing file. Don't create a new one for the same topic.
- **Delete what's stale.** Finished a project? Remove or archive its memory file. Changed a preference? Update the old file, don't add a contradictory new one.
- **Keep the index readable.** `MEMORY.md` is one line per file, each under about 150 characters. When it passes about a hundred lines, or gets long enough that you skim it instead of reading it, it's time to review and prune.
- **Review periodically.** Every week or two for a new agent, monthly after that, ask the agent to review its memory: merge overlaps, delete what's stale or wrong, tighten the index (`review-and-prune`).

A memory folder a few weeks in looks something like this:

```
memory/
  MEMORY.md                       # the index: one line per file
  user_profile.md                 # who you are, how you work
  user_working_hours.md
  feedback_short_answers.md       # a correction you gave
  feedback_ask_before_sending.md
  project_website.md              # active project context
  reference_bank_portal.md        # a pointer outside the house
  ...
```

It grows with the house. The test is overlap, not count.

## Memory vs. session logs

Two different things, easy to confuse:

| | Memory | Session logs |
|---|---|---|
| **What** | Persistent facts, preferences, project state | A record of what happened in a session |
| **Where** | `memory/` in the agent home (in a house); `~/.claude/.../memory/` (elsewhere, local) | `sessions/` in the agent home, flat and dated, in git if your house keeps git |
| **When written** | Whenever something worth persisting comes up | At the end of each session (`wrap-up-this-session`) |
| **Audience** | Future-you and future-agent, indefinitely | Future-you and next-session-agent, near term |
| **Lifecycle** | Updated and consolidated | Append-only |

You want both. Memory carries continuity of identity and project state across all sessions. Session logs carry the texture of what happened *this* session — enough that the next one can pick up where you left off.

## See also

- [Session Logs](Session%20Logs.md) — the per-session counterpart to memory.
- [Session Rhythm](Session%20Rhythm.md) — when memory is loaded and saved.
- [Project as Repo](Project%20as%20Repo.md) — where projects live, and which ones carry their own CLAUDE.md.
