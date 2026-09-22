# Session Logs

Step 6 of [The Iteration Loop](The%20Iteration%20Loop.md). The single highest-leverage habit for keeping continuity across sessions.

## Why session logs matter

A session log is a short markdown file that captures what happened in this session: what you tried, what worked, what didn't, what's open, what's next.

You write it for two audiences:

- **Future-you**, in a day, a week, or a month, trying to remember what you were doing and why.
- **Next-session Claude Code**, picking up the project with no context but the files on disk.

Without session logs, you rely on Claude Code's auto-compact summary (which loses texture) and your own memory (which is unreliable). With them, you can do this:

> A day and a half later, you'll realize: shoot, we've gone in the wrong direction. Let's get back to where we were. What do we have to undo? Or — hey, we did something really clever in this other project, what was it?

Claude Code can read the session logs and tell you. That capability is worth a lot.

## File naming

The convention that works:

```
YYYY-MM-DD-NNN-brief-topic.md
```

- **Date** in ISO format, UTC if you collaborate across time zones, local if you're solo and prefer it.
- **NNN** — a sequence number for the day, in case you write multiple logs (you will).
- **Brief topic** — three or four words, kebab-case.

Examples:

- `2026-05-06-001-asimov-bootstrap.md`
- `2026-05-06-002-asimov-memory-discussion.md`
- `2026-05-07-001-mortgage-calculator-plan.md`

Pete's UTC convention for shared repos comes from the Founders Cohort wiki — multiple collaborators in different time zones means UTC avoids confusion. For solo projects, local time is fine; just be consistent.

## Where session logs live

Inside the project folder, in a `sessions/` directory at the root:

```
my-project/
├── README.md
├── CLAUDE.md
├── plan.md
├── sessions/
│   ├── 2026-05-06-001-asimov-bootstrap.md
│   ├── 2026-05-06-002-asimov-memory.md
│   └── 2026-05-07-001-test-suite.md
└── ...
```

These are committed to the repo. Anyone (including future-you) can read them.

## What goes in a session log

Suggested skeleton:

```markdown
# Session 2026-05-06-001 — Asimov bootstrap

## Goal

What we set out to do this session.

## What we did

The actual work. Bullets are fine. Quote relevant snippets if useful.

## What worked

The bits that landed cleanly. Worth remembering.

## What didn't work

Dead ends. Wrong turns. Sometimes worth keeping so we don't repeat them.

## Open threads

Things we noticed but didn't address. Files that need cleanup. Questions
to bring up next session.

## Next steps

Where the next session should pick up.
```

You don't need every section every time. Sometimes "Goal / What we did / Next steps" is enough. Sometimes you want a longer "What didn't work" because the dead end was instructive.

## Who writes the log — you, Claude, or both?

Both, mostly Claude.

The pattern:

1. You say "prep for clear" (or whatever your trigger phrase is).
2. The agent reviews the session, drafts the log.
3. You glance at it. Edit if needed.
4. Commit and push.
5. `/clear`.

The agent writes a better session log than most humans will, because it has the whole conversation in working memory and can summarize it accurately. Your job is to glance and either approve or correct.

If the agent's draft is missing something important — a tricky decision, a near-miss, a "we almost broke X" moment — say so. The agent will revise.

## What "prep for clear" should do

A useful set of prep-for-clear actions, configurable per agent:

1. Note any open threads.
2. Write a session log.
3. Commit work to git (and push, if appropriate).
4. Update memory if anything important came up.
5. Report back: "Safe to clear."

You can encode this in your `CLAUDE.md` or your personalization file:

```markdown
## Session close protocol

When I say "prep for clear" or "ready to close," do the following:
1. Check git status; flag uncommitted changes.
2. Write a session log to `sessions/YYYY-MM-DD-NNN-topic.md`.
3. Commit the session log and any related changes.
4. Consolidate memory if anything new came up worth persisting.
5. Tell me: safe to clear.
```

The agent will follow these instructions whenever you use the trigger.

## Frequency

Once per session. If you're working in long stretches without `/clear`, you should write more session logs, not fewer. Multiple logs per day is normal.

If you're going to skip writing one because "this session was small," err on the side of writing it anyway. The five-minute log is cheap; the moment three weeks from now when you can't reconstruct what you did is expensive.

## When session logs go wrong

The two failure modes:

- **Too generic to be useful.** "Worked on the project. Made progress. Will continue next time." This isn't a session log; it's a placeholder. If you wrote this, ask the agent to write a real one and replace it.
- **Way too long.** Five-page session logs are usually a sign that the agent is dumping the whole conversation rather than summarizing it. Push back: "Compress this to one page; keep the texture, drop the chatter."

A good session log is a page or two. It reads like notes from a productive meeting.

## See also

- [The Iteration Loop](The%20Iteration%20Loop.md) — where session logs sit in the cycle.
- [Session Rhythm](Session%20Rhythm.md) — how often you'll be writing them.
- [Memory Across Sessions](Memory%20Across%20Sessions.md) — the complementary persistent layer.
- [Commit Every Session](Commit%20Every%20Session.md) — what happens to the session log after it's written.
