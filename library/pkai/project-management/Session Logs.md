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
- **Brief topic** — two or three words, kebab-case.

Examples:

- `2026-05-06-001-website-launch.md`
- `2026-05-06-002-memory-cleanup.md`
- `2026-05-07-001-mortgage-calculator-plan.md`

UTC suits a shared repo: with collaborators in different time zones, it avoids confusion. For your own house, local time is fine; just be consistent.

## Where session logs live

In your agent home, in `sessions/` — one flat folder, dated, whatever project each session was about:

```
<Name> (agent)/
├── CLAUDE.md
├── memory/
├── sessions/
│   ├── 2026-05-06-001-website-launch.md
│   ├── 2026-05-06-002-memory-cleanup.md
│   └── 2026-05-07-001-mortgage-calculator-plan.md
└── ...
```

They're committed to the agent home's history, alongside memory. Future-you can read them any time.

Where a project *stands* doesn't go in a log. Each project in your HQ has a `<slug>.status.md` beside its README: current state, next actions, decisions and their reasons. The log says what happened; the status file says where things stand. A session that worked on a project updates both.

## What goes in a session log

Suggested skeleton:

```markdown
# Session 2026-05-06-001 — Website launch

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

1. You say "wrap up this session" (or whatever your trigger phrase is).
2. The agent reviews the session and writes the log.
3. It tells you what it logged, saved and left open, and commits.
4. `/clear`.

The agent writes a better session log than most humans will, because it has the whole conversation in working memory and can summarize it accurately. It doesn't wait for your approval; your job is to read a log when you want to, and correct it when it's wrong.

If a log is missing something important — a tricky decision, a near-miss, a "we almost broke X" moment — say so, and the agent will add it. A log is append-only history, so a correction is added, not a rewrite of what happened.

## What "wrap up this session" should do

Every house built from the kit has a `wrap-up-this-session` skill that does this:

1. Note any open threads.
2. Write a session log to `sessions/YYYY-MM-DD-NNN-topic.md`, and bring the project's status file up to date if the session worked on one.
3. Save anything new to memory.
4. Commit (once git has arrived, if it was still installing). It never pushes.
5. Report back: "It's now safe to clear or archive."

There's nothing to write into your charter. Say "wrap up this session" (or "let's wrap," or "prep for clear") and the skill does it. If you'd like it done a little differently, tell your agent; it saves that as a memory.

## Frequency

At least once per session. If you're working in long stretches without `/clear`, take that as the sign to wrap up and clear more often; each wrap-up writes a log. Multiple logs per day is normal.

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
