# Memory Across Sessions

What survives `/clear`. What lives where. How to keep the memory system useful instead of letting it become noise.

## Three layers, one folder

Memory in this stack lives in three places, all inside (or alongside) your project folder:

| Layer | Where | Loaded when |
|---|---|---|
| `CLAUDE.md` | At the project root | Every session start |
| Personalization (e.g., `CLAUDE-<email>.md`) | Project root, when shared | Every session start, if it exists |
| `MEMORY.md` and memory files | `~/.claude/projects/<project-path>/memory/` (local-only) | Every session start, then individual files when relevant |

When a session starts, Claude Code reads them in roughly this order: shared `CLAUDE.md`, your personalization file, then `MEMORY.md` and whichever memory files it references. By the time you type your first message, the agent already knows the project conventions, your personal preferences, and whatever you've asked it to remember from past sessions.

## `CLAUDE.md` — the shared brain

Project-wide instructions. Conventions. Vocabulary. Things every collaborator (human or agent) should know.

Common contents:

- What this project is, in one paragraph.
- Folder layout.
- Any rules: "use UTC dates," "always run tests before committing," "don't modify `_generated/` by hand."
- Pointers: "see `docs/architecture.md` for the design," "see `Conventions/` for shared norms."

Keep it short. CLAUDE.md is loaded at the start of every session, so it costs context window every time. A 200-line CLAUDE.md is fine. A 2,000-line one is leaking.

When CLAUDE.md needs to grow beyond a few screens, link out to other files. The structure of the project should be the structure of its documentation; CLAUDE.md is the index, not the encyclopedia.

## Personalization files

In a multi-user project (a shared course wiki, a team repo), each collaborator can keep their own preferences in a `CLAUDE-<email>.md` file at the root. The shared `CLAUDE.md` checks for this file at session start.

Use it for things like:

- "I prefer terse responses."
- "Always use British English spelling."
- "When I say 'post,' I mean post to the microblog."
- "Run a status check before any push."

These files are committed to the repo and visible to everyone in the project. That's intentional — in collaborative settings, seeing how others configure their agents is useful.

For truly private preferences, put them in `~/.claude/CLAUDE.md` on your local machine. That file applies to all your Claude Code sessions across all projects, and never syncs anywhere.

## `MEMORY.md` and memory files — the persistent context

This is the layer that grows over time. Memory files are markdown notes the agent writes to itself, indexed by `MEMORY.md`. Each conversation starts by reading the index and pulling in whatever's relevant.

Memory files are **local-only** by default — stored in `~/.claude/projects/<project-path>/memory/`, not in the repo, not pushed to GitHub, not visible to anyone else. They are yours.

The four kinds of memory worth saving:

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

The goal: a small number of files, each on a clear topic, kept up to date.

- **Organize by topic, not by date.** `project_my_website.md` beats `memory_2026-03-10.md`, `memory_2026-03-11.md`, `memory_2026-03-12.md`.
- **Update, don't accumulate.** When something changes, update the existing file. Don't create a new one for the same topic.
- **Delete what's stale.** Finished a project? Remove or archive its memory file. Changed a preference? Update the old file, don't add a contradictory new one.
- **Keep the index small.** `MEMORY.md` should be a short list, one line per file. If it's getting long, consolidate.
- **Consolidate periodically.** At the end of a big work session, ask the agent to consolidate what it learned.

A typical memory folder looks like this:

```
memory/
  MEMORY.md              # short index
  user_profile.md        # who you are, how you work
  feedback_style.md      # corrections and preferences
  project_foo.md         # active project context
  reference_external.md  # pointers outside the house
```

Five files is plenty. Ten is probably too many.

## Memory vs. session logs

Two different things, easy to confuse:

| | Memory | Session logs |
|---|---|---|
| **What** | Persistent facts, preferences, project state | A record of what happened in a session |
| **Where** | `~/.claude/.../memory/` (local) | In the project folder, committed to git |
| **When written** | Whenever something worth persisting comes up | At the end of each session |
| **Audience** | Future-you and future-agent, indefinitely | Future-you and next-session-agent, near term |
| **Lifecycle** | Updated and consolidated | Append-only |

You want both. Memory carries continuity of identity and project state across all sessions. Session logs carry the texture of what happened *this* session — enough that the next one can pick up where you left off.

## See also

- [Session Logs](Session%20Logs.md) — the per-session counterpart to memory.
- [Session Rhythm](Session%20Rhythm.md) — when memory is loaded and saved.
- [Project as Repo](Project%20as%20Repo.md) — where CLAUDE.md and personalization files live.
