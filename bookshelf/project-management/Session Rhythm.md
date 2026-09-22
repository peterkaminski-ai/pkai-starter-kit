# Session Rhythm

How long a session should be, when to clear the context window, and why one long daily session didn't survive contact with reality.

## The original plan

When Pete and his agent Freya started working together, the design was **one long session per day.** Start in the morning. Work through the day. Each new "wake-up" Freya would read off the state of the world and remember everything from the previous interaction.

It made sense in theory. Persistent identity, persistent context, fewer transitions.

## What actually happened

Pete interrupts a lot. Mid-thought, he wants to fix this thing, build that thing, research the other thing. The long-session model meant the agent's context window was constantly accumulating drift — half-finished tangents, one-off questions, dead ends. By afternoon, the context was murky. By evening, things were getting weird.

The model that survived: **short sessions with frequent `/clear`.** Multiple session logs per day is normal.

## Why short sessions work

- **Context windows stay sharp.** You're not exercising the bot at 700K-out-of-a-million tokens, where the haystack-test decay curve starts hurting you.
- **Caching still works.** The provider's prefix cache keeps your warm sessions cheap; clearing and starting fresh doesn't blow up your bill.
- **Each session has a clear theme.** "Work on the mortgage calculator." "Triage the inbox." "Refactor the auth flow." Easier to remember, easier to log.
- **Failure is contained.** If a session goes off the rails, you `/clear` and start over. You don't drag bad state through the rest of the day.

## What "clear" means

`/clear` resets Claude Code's working memory. It does *not* delete:

- Files on disk.
- `CLAUDE.md`.
- `MEMORY.md` and the memory files it indexes.
- Project session logs (those are files, not session state).
- Git history.
- The shell, your terminal scrollback, your other windows.

What it *does* clear: the in-memory conversation, tool-call history, and the bot's local awareness of what just happened. The next message starts fresh.

Think of `/clear` like the agent going to sleep and waking up — fuzziness gone, persistent memories intact.

## When to clear

A few useful triggers:

- **Topic shift.** You're done with the thing you were working on, and you're about to start a different project. Don't let Project A's context leak into Project B.
- **Context getting full.** Run `/context`. If the gas gauge is half-full or more, clear soon.
- **The bot is drifting.** It's getting stuck on stale ideas, repeating itself, or losing the thread. A fresh start usually helps.
- **End of session.** You're walking away. Always clear before stepping away for an hour or more.
- **Auto-compact warning.** If Claude Code is about to auto-compact, clear deliberately first so *you* control what gets summarized.

## The "prep for clear" habit

Don't just hit `/clear`. Tell the agent first:

> Prep for clear.

The agent should:

1. Note any open threads.
2. Write a session log (see [Session Logs](Session%20Logs.md)).
3. Commit work to git.
4. Update memory if anything important came up.
5. Report back: "Safe to clear."

Then you `/clear`.

This is the habit that makes short sessions work. Without it, you're losing context. With it, you're shedding noise while keeping signal.

## After clear

You can usually pick up by saying something specific:

> Continue working on the mortgage calculator. Read `Projects/MortgageCalc/plan.md` and the most recent session log to catch up.

Or, if you don't have a specific task and want a briefing:

> Good morning. What's the state of things?

A persistent agent (Asimov, Freya) will run a morning routine and tell you. Vanilla Claude Code will read whatever it can find and orient itself.

## Sessions, naps, and `/clear`

Three kinds of breaks worth distinguishing:

- **Quick `/clear`** — the most common. Topic shift, context cleanup, mid-day reset. The agent goes to sleep, wakes up. Memory persists.
- **Auto-compact** — Claude Code's automatic summarization when the context window is about to hit the wall. Works, but the summary loses texture. Prefer manual `/clear` with a session log.
- **Quit and restart** — exit Claude Code entirely. Same effect as `/clear` for memory purposes; useful when the terminal itself is acting up or you want a totally fresh shell.

Don't be afraid of any of these. They're cheap.

## Discipline, not heroism

The temptation, when you're deep in a problem, is to keep going. *I'll just figure this one thing out, then I'll log.* The session goes long. The context fills. You auto-compact. You lose nuance. Tomorrow you re-read the auto-compact summary and it's not enough to pick up where you were.

The habit pays off because you're not relying on heroism. Short sessions, prep for clear, session log, commit, push when ready. Repeat.

## See also

- [Session Logs](Session%20Logs.md) — what to write before you clear.
- [Memory Across Sessions](Memory%20Across%20Sessions.md) — what survives `/clear`.
- [The Iteration Loop](The%20Iteration%20Loop.md) — sessions are units of execution within the loop.
