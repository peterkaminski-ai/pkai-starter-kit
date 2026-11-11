# Pair Programming with AI

The interaction style this whole stack assumes — and why it isn't "AI does the work while you watch."

## The framing

Pair programming with another human has a driver and a navigator. The driver types. The navigator thinks at higher altitude — the structure of the change, the next steps, the parts that need scrutiny. They swap roles regularly.

Working with Claude Code is similar, with a twist: **Claude Code is always the driver.** It writes the code, runs the commands, reads the files. *You* are always the navigator.

That's the bargain. You bring intent, judgment, and the responsibility for direction. Claude brings speed, breadth, and willingness.

## Why "AI does the work, you check it" doesn't quite capture it

The naive picture is: type a prompt, AI produces output, you accept or reject. This is the chat-completion model — fine for one-shot questions, not great for projects.

The reality of the iteration loop is: you and Claude Code are in continuous dialogue. You ask. It proposes. You correct. It revises. You execute. It reports. You assess. You adjust. The output isn't a single artifact — it's a conversation that produces a working result and a session log along the way.

That's pair programming. Not delegation.

## Stay in the driver's seat (even though Claude is driving)

The metaphor strains here. Try this version:

- Claude Code is your **hands** — fast, precise, tireless.
- You are the **head** — directing where the hands go and why.

When your head disengages and the hands start moving on their own intuition, you get the disengaged-driver failure mode: "I don't know, you figure it out" → unbuild and rebuild → drift.

When your head stays engaged and the hands move at full speed, you get the result the stack is designed for: a project that gets done in hours instead of days, with you understanding what was built.

## Watch the work

A specific habit that pays off: **watch what Claude Code is doing.** Don't tab away during a long task. Don't go to lunch in the middle of a complex change. Stay in the loop.

You're watching for:

- **Drift.** Claude is doing things adjacent to what you asked. Course-correct.
- **Confusion.** Claude is making the same mistake twice. Stop and re-explain.
- **Surprise.** Claude is doing something you didn't expect, even if it might be right. Pause and confirm before letting it commit.
- **Overreach.** Claude is fixing problems you didn't ask it to fix. Sometimes good, sometimes not — your call.

Pete: "You wouldn't tell your intern, 'hey, build this part of the business,' and walk away. You'd say, okay, hey intern, if you were going to build this part of the business, what would you do? And how would we do that differently to make it a little bit better? And let me check your work after the first hour, after the first 4 hours of the first day."

That. With Claude Code.

## Highlighting and asking — the small interaction that matters

When you want Claude Code to do something specific to a piece of text:

1. **Select** the text in your editor.
2. Ask Claude Code: "turn this into a numbered list," "make this more concise," "expand this into a plan."

Some editors let Claude Code see your selection directly; with others you just point at the lines or paste them in. This is the "augment my thinking, don't replace it" pattern in miniature: you decide what's important; Claude does the mechanical transformation.

The bigger version of the same pattern is the wish → plan → review cycle from [The Iteration Loop](The%20Iteration%20Loop.md). You decide what matters; Claude expands and refines; you confirm.

## Speak the agent's language (a little)

Some phrasings Claude Code handles well, that are worth incorporating:

- **"Read this file and..."** — explicit handoff of context. Better than assuming Claude knows what you're referring to.
- **"...then write a plan in the same folder"** — direct it to put output where you can see it.
- **"...and commit when you're done"** — wraps up the task with version control.
- **"Tweak it so X, not Y"** — concrete revision request.
- **"Make sure the plan is still coherent"** — after manual edits.
- **"What questions do you have before starting?"** — surface ambiguity before execution. Underused.

You don't need a phrasebook. Claude Code understands plain English. But naming these patterns makes it easier to use them deliberately.

## When to take the keyboard

Sometimes you should write the code yourself. Times this happens:

- The change is small and you can do it faster than describing it.
- The change is creative and you want to explore by typing, not by directing.
- You want to learn — driving teaches things that watching doesn't.
- Claude Code is stuck and rephrasing isn't unsticking it.

This is fine. The model isn't "always have Claude drive." It's "Claude is *available* to drive, and you choose when."

## Read your diffs

After Claude Code makes changes, **look at the diff.** Either in your editor (the file just changed in front of you — if you already use Obsidian or VS Code, they're fine), in `git diff`, or via Claude's own "what did you change?" summary.

You're checking that the change matches your intent. You're not double-checking the syntax — Claude won't make basic syntax errors. You're double-checking the *judgment* — the design choices Claude made when implementing what you asked.

This is the navigator's job. Don't skip it.

## The rhythm

Plan in dialogue. Execute in short bursts. Read diffs. Course-correct. Commit. Session log. Clear. Repeat.

Each loop should feel small. If a loop feels heroic — "we worked on this thing for four hours straight" — you almost certainly let the navigator role lapse. Take a break, write a session log, restart with a clearer plan.

## See also

- [The Iteration Loop](The%20Iteration%20Loop.md) — the macro structure.
- [Plan Mode and Auto Mode](Plan%20Mode%20and%20Auto%20Mode.md) — how Claude Code's permission modes support this style.
- [Anti-Patterns](Anti-Patterns.md) — what happens when the navigator role lapses.
