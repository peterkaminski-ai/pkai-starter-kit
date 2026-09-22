# Working With Agents

When to use vanilla Claude Code, when to use a personal agent, and how to think about foreground / background instances.

## Vanilla Claude Code vs. a personal agent

You don't need a named agent to do good work. Vanilla Claude Code, run inside a project folder with a sensible `CLAUDE.md`, is enough for many people for a long time.

A personal agent is "Claude Code with extra personality and memories." Concretely:

- A folder somewhere outside your project repos, e.g., `~/.agents/asimov/`.
- A system prompt file in that folder describing the agent's persona, role, and conventions.
- A shell alias that launches Claude Code with the system prompt appended and the working directory set to the agent's home.
- Memory and session logs that accumulate over time, just like a project would.

When you invoke `asimov` (or `freya`, or whatever you named yours), you're running Claude Code, but it knows it's *that* agent — with its history, its conventions, its memory.

## When vanilla is enough

- You're new to this and learning.
- You work in a few well-bounded project folders and don't need cross-project continuity.
- Your `CLAUDE.md` per project gives the agent enough context.
- You don't have a strong reason to give the agent a name yet.

## When a personal agent earns its keep

- You want continuity across many projects — not just within one.
- You delegate more than coding to the agent: research, triage, scheduling, writing.
- You want a stable identity that builds up context about *you*, not just about each project.
- You want to start delegating things like inbox triage, calendar management, or routine work where the agent should have memory across all of it.

The decision is roughly: "do I want a colleague who knows me, across all my work?" If yes, build a personal agent.

## Building one

A working recipe (this is the pattern Pete used to bootstrap Asimov for Mark Scott):

1. Create the folder: `~/.agents/<name>/`.
2. Write a system prompt file inside: `~/.agents/<name>/<name>.md`.
3. Add a shell alias to your `~/.zshrc`:

   ```bash
   alias asimov='cd ~/.agents/asimov/ && claude --model opus --append-system-prompt ~/.agents/asimov/asimov.md'
   ```

4. `git init` on `~/.agents/` (the parent — so multiple agents share one repo). Push to a new private GitHub repo.
5. Test by running the alias in a fresh terminal. Say "hi, how can you help me?" Confirm the agent responds in character.

The first conversation you should have with your new agent:

> How will you and I remember what you did for me, and how will you manage the various memories you'll need?

Then:

> Get into a habit of session logs that you keep for yourself.

That's the bootstrap. From there, the agent and you build out conventions together.

## Foreground and background instances

Once you have a persistent agent, you'll occasionally want to run a long task without blocking your current conversation. The pattern Pete uses:

- **Foreground agent** — what you're talking to right now. It owns shared state: commits, memory writes, email, decisions.
- **Background agent(s)** — spawned to do specific scoped work in parallel. They have read access to anything they need, and a scratch directory they can write to. They cannot commit, push, send email, or modify shared memory.
- **Foreground integrates** — when the background work is done, it leaves a handoff note. The foreground agent reads it and performs the writes the background couldn't make: commits, memory updates, file moves.

This works because the boundary is enforced by the agent's persona, not by the tool. The background instance is told "you don't write to shared state" and obeys. The foreground instance is told "check for handoffs from background instances at session start." Together you get parallelism without conflicts.

This pattern is overkill for most users. Mention it here so you know it exists when you're ready.

## Sub-agents

Claude Code has a built-in concept of **sub-agents** — task-scoped agents you delegate specific pieces of work to within a session. Defined in `.claude/agents/` per project, with descriptions Claude reads to know when to invoke them.

Useful for:

- Constraining a long search across the codebase to a sub-agent so the result doesn't blow up the main context window.
- Dividing concerns (e.g., a "code reviewer" sub-agent vs. a "test runner" sub-agent).

Different mechanism from a *personal* agent (Asimov / Freya), which runs as its own Claude Code session at the top level. Personal agents have lifespan; sub-agents have scope.

## Skills

Claude Code's **skills** are reusable instructions you invoke with slash commands. You can write your own. They're a lighter-weight pattern than a sub-agent: a markdown file that defines what to do when you say `/some-skill arg1 arg2`.

Skills are good for:

- Repeated workflows that always go the same way.
- Templates with parameters.
- Shorthand for a sequence of actions you don't want to retype.

You can build skills directly with Claude Code: "Make me a slash command called `/triage` that does X, Y, Z."

## How agents change the iteration loop

The iteration loop is the same:

1. Project as container.
2. Wish.
3. Have the agent write a plan.
4. Review and improve the plan.
5. Execute.
6. Session log.
7. Iterate.

The difference is *who* you're talking to and *what they remember about you*. An agent that's worked with you for a month already knows your preferences, your common projects, your past decisions. The wish and the plan and the review are all faster because there's less to re-establish.

## See also

- [The Iteration Loop](The%20Iteration%20Loop.md) — runs the same with or without a personal agent.
- [Memory Across Sessions](Memory%20Across%20Sessions.md) — what makes an agent persistent.
- [Pair Programming with AI](Pair%20Programming%20with%20AI.md) — the real-time interaction style.
