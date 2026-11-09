# Plan Mode and Auto Mode

Claude Code has four permission modes, and two ways to move between them: the desktop app's mode picker, and Shift+Tab. Knowing what each one does — and which one you should be in for the task at hand — keeps the loop smooth.

## The four modes

In order of how aggressive Claude Code is allowed to be:

1. **Plan mode.** Claude can think, read files, and propose plans. It cannot make edits, run commands, or take destructive action. Safest.
2. **Manual mode.** The cautious one. Claude asks before reads/writes/commands, and you approve each one.
3. **Accept Edits.** Edits go through without a prompt. Other actions (commands, deletions) still ask permission.
4. **Auto Mode.** Claude prompts only when the LLM decides the action is high-risk enough to warrant it. Most actions go through silently.

## How to switch

Choose a mode in the desktop app's mode picker, or press **Shift+Tab** to cycle through them. Switching a few times to see them is safe.
<!-- VERIFY(cold-start): where the mode picker sits in the Code tab, and what each mode is labelled there -->

You can also enter plan mode with `/plan`.

## Which mode for which moment

| You're doing... | Use... |
|---|---|
| Drafting / refining a plan | **Plan mode** |
| Executing a known-safe loop | **Auto mode** |
| Running something for the first time | **Accept Edits** or **Manual** |
| Touching dangerous things (auth, prod, deletes) | **Manual** |

## Auto mode in practice

Auto mode is what you'll use most of the time once you trust your project's guardrails. It uses a quick LLM check on each potentially-risky action to decide whether to interrupt you. The result is fewer permission prompts without giving up safety entirely.

> Pete's framing: it's not a panacea, but for routine work it's a big improvement over option-1-option-1-option-1.

When something starts feeling off in auto mode — unfamiliar files, surprising commands, a direction you didn't sanction — switch back to **Accept Edits** or **Manual**. You don't have to commit to a mode for the whole session.

If auto mode blocks something your agent was doing, your agent shows you the block word for word and offers a narrow way forward. One of them is Manual mode: switch to it, approve that one action yourself when it asks, and switch back. That moves the decision to you and leaves nothing permanent; it isn't turning a safety layer off. [When a Safety Layer Blocks You](../keeping-yourself-safe/When%20a%20Safety%20Layer%20Blocks%20You.md) has the rest.

## Plan mode in practice

Plan mode shines when you're at step 3 or step 4 of [The Iteration Loop](The%20Iteration%20Loop.md). You want Claude Code to think, write down, propose — without starting to build. Claude Code is biased to action. Plan mode is the rein.

Pete: "Claude Code is biased to action, so if you're not careful about telling it 'hey, let's do a plan,' it'll just do stuff." Plan mode is the mechanical version of "let's do a plan."

When the plan is good, switch out of plan mode and let it execute.

## The "yes for this folder" pattern

When Claude Code asks permission, you typically have two kinds of yes:

- **Yes, once.** Ask me again next time.
- **Yes, always** — within a scope, such as "always read from this folder".
<!-- VERIFY(cold-start): the exact labels on a permission prompt in the Code tab -->

For routine edits inside your house's folders, **yes, always, for edits in this folder** is usually right. You burn through fewer prompts, and the folder scope keeps it tight.

For commands, and for one-off risky things — modifying a critical config, running an unfamiliar command — **yes, once** keeps you in the loop. A standing "always" for a command reaches further than it looks.

Either way, read the prompt before you click. If you don't understand one, ask your agent; it can explain any prompt.

## What about `--dangerously-skip-permissions` (YOLO mode)?

Yes, it exists, as a command-line flag for the terminal; you won't type it in the desktop app. No, you shouldn't use it as a default. The reason permission prompts exist is that Claude Code is fast enough to do real damage in a few seconds.

There are situations where YOLO mode is right (long-running batch work in a sandbox, scripted automation in CI). For everyday project work, auto mode is the right level of trust. And it is never the answer to a block: when a safety layer stops your agent, your agent never suggests switching one off, and you shouldn't reach for this either.

## The mode-cycle as a discipline

Pete Kaminski, who wrote this book, uses the mode switch as a deliberate gear-shift, not just a key combo:

- Starting a fresh project → plan mode.
- Plan looks good → switch to auto mode.
- Something feels weird → switch back to accept-edits or Manual.
- Done → wrap up (the log, then memory, then commit), clear.

That's the rhythm. Mode is a tool, not a setting.

## See also

- [The Iteration Loop](The%20Iteration%20Loop.md) — when each mode is appropriate.
- [Anti-Patterns](Anti-Patterns.md) — auto mode without project management is the disengaged-driver failure mode.
