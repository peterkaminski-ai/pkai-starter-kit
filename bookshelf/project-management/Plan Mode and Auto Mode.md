# Plan Mode and Auto Mode

Claude Code has four permission modes, and a keyboard cycle to move between them. Knowing what each one does — and which one you should be in for the task at hand — keeps the loop smooth.

## The four modes

In order of how aggressive Claude Code is allowed to be:

1. **Plan mode.** Claude can think, read files, and propose plans. It cannot make edits, run commands, or take destructive action. Safest.
2. **(No mode shown.)** Default-cautious. Claude prompts before reads/writes/commands.
3. **Accept Edits.** Edits go through without a prompt. Other actions (commands, deletions) still ask permission.
4. **Auto Mode.** Claude prompts only when the LLM decides the action is high-risk enough to warrant it. Most actions go through silently.

## How to switch

**Shift-Tab** cycles through the modes. The current mode is shown above the prompt. Hit Shift-Tab a few times — it's safe — and watch the indicator change.

You can also enter plan mode with `/plan`.

## Which mode for which moment

| You're doing... | Use... |
|---|---|
| Drafting / refining a plan | **Plan mode** |
| Executing a known-safe loop | **Auto mode** |
| Running something for the first time | **Accept Edits** or default |
| Touching dangerous things (auth, prod, deletes) | Default cautious |

## Auto mode in practice

Auto mode is what you'll use most of the time once you trust your project's guardrails. It uses a quick LLM check on each potentially-risky action to decide whether to interrupt you. The result is fewer permission prompts without giving up safety entirely.

> Pete's framing: it's not a panacea, but for routine work it's a big improvement over option-1-option-1-option-1.

When something starts feeling off in auto mode — unfamiliar files, surprising commands, a direction you didn't sanction — Shift-Tab back to **Accept Edits** or **default**. You don't have to commit to a mode for the whole session.

## Plan mode in practice

Plan mode shines when you're at step 3 or step 4 of [The Iteration Loop](The%20Iteration%20Loop.md). You want Claude Code to think, write down, propose — without starting to build. Claude Code is biased to action. Plan mode is the rein.

Pete: "Claude Code is biased to action, so if you're not careful about telling it 'hey, let's do a plan,' it'll just do stuff." Plan mode is the mechanical version of "let's do a plan."

When the plan is good, Shift-Tab out of plan mode and let it execute.

## The "yes for this folder" pattern

When Claude Code asks permission, you typically have two options:

- **1.** Yes once. Ask me again next time.
- **2.** Yes always (within this scope, e.g., "always read from this directory").

For setup steps and routine work, **option 2** is usually right. You burn through fewer prompts, and the scoping (directory, command, etc.) keeps it tight.

For one-off risky things — modifying a critical config, running an unfamiliar command — **option 1** keeps you in the loop.

Pete: "Hitting the 1 key or 2 key is faster than arrow-key-Enter if you need to answer lots of CC permission prompts fast." Tactical, but it adds up.

## What about `--dangerously-skip-permissions` (YOLO mode)?

Yes, it exists. No, you shouldn't use it as a default. The reason permission prompts exist is that Claude Code is fast enough to do real damage in a few seconds.

There are situations where YOLO mode is right (long-running batch work in a sandbox, scripted automation in CI). For everyday project work, auto mode is the right level of trust.

## The mode-cycle as a discipline

Pete uses Shift-Tab as a deliberate gear-shift, not just a key combo:

- Starting a fresh project → plan mode.
- Plan looks good → Shift-Tab to auto mode.
- Something feels weird → Shift-Tab back to accept-edits.
- Done → exit, commit.

That's the rhythm. Mode is a tool, not a setting.

## See also

- [The Iteration Loop](The%20Iteration%20Loop.md) — when each mode is appropriate.
- [Anti-Patterns](Anti-Patterns.md) — auto mode without project management is the disengaged-driver failure mode.
