# Working With Agents

When to use vanilla Claude Code, when to use a personal agent, and where sub-agents, skills, and foreground/background fit.

## Vanilla Claude Code vs. a personal agent

You don't need a named agent to do good work. Vanilla Claude Code, run inside a project folder with a sensible `CLAUDE.md`, is enough for many people for a long time.

A personal agent is "Claude Code with a persona and a memory." Concretely:

- A folder outside your project repos — the **agent home** — holding a charter (`CLAUDE.md`), memory, session logs, and the skills it has taken on.
- A launch command — the agent's name — that opens a terminal in that folder and starts Claude Code there.
- Memory and session logs that accumulate over time, the way a project's would, but about *you* and across all your work.

When you type the agent's name, you're running Claude Code, but it knows it's *that* agent — with its history, its conventions, its memory. This kit builds one for you; `START-HERE.md` at the kit root is the way in.

## When vanilla is enough

- You're new to this and learning.
- You work in a few well-bounded project folders and don't need cross-project continuity.
- Your `CLAUDE.md` per project gives Claude enough context.
- You don't have a strong reason to give the agent a name yet.

## When a personal agent earns its keep

- You want continuity across many projects — not just within one.
- You delegate more than coding: research, triage, scheduling, writing.
- You want a stable identity that builds up context about *you*, not just about each project.
- You want to start handing over routine things — inbox triage, keeping notes in order — where the agent should have memory across all of it.

The decision is roughly: "do I want a colleague who knows me, across all my work?" If yes, build a personal agent.

## The first conversation

Two questions are worth asking any new agent early, whatever the kit set up:

> How will you and I remember what you did for me, and how will you manage the memories you'll need?

> Get into a habit of session logs that you keep for yourself.

From there, the agent and you build out conventions together. The `save-a-memory` skill is the kit's answer to the first; the persona's session-rhythm section is the answer to the second.

## Foreground and background

Once you have a persistent agent, you'll want to run a long task without blocking the conversation you're in. The pattern:

- **Foreground** — the instance you're talking to. It owns shared state: commits, memory, the charter, anything outbound.
- **Background** — a second instance of the same agent, on one scoped job, with a scratch folder it may write to and nothing else. It reads freely; it never commits shared state, writes memory, or sends anything.
- **The foreground integrates** — when the background is done it leaves a handoff; the foreground reads it and performs the writes the background couldn't, by copying.

This works because the boundary is in the charter, not the tool. It's more than most people need on day one, which is why it's the *working* path in setup rather than the default. The full mechanism is [Foreground and Background](../house-and-estate/Foreground%20and%20Background.md) on the shelf, and the `foreground-background` skill carries it for the agent.

## Sub-agents

Claude Code has a built-in notion of **sub-agents** — task-scoped helpers you delegate specific pieces of work to *within* a session. Useful for keeping a long search out of your main context, or for dividing concerns (a reviewer, a test runner).

A different thing from a background instance. A sub-agent has scope and lives inside one conversation; a background instance is your whole agent, started again, with a lifespan of its own and a handoff at the end. Sub-agents are for the agent's convenience; background instances are for yours.

## Skills

A **skill** is a folder your agent can take on: a `SKILL.md` saying what it does and when it applies, plus any scripts or references, plus — in this kit — its own lineage, licence and credits, so it can travel to another house alone. Skills are good for repeated workflows, for a lesson you want to hand to someone, and for growing a house one step at a time. `skills/README.md` at the kit root lists the ones that ship with it; "make me a skill that does X" is a fine thing to ask your agent.

Don't slavishly turn everything into a skill because everyone else does. A skill is the printed-book version of a lesson — a very standard, very useful, and rather thin way to carry one. The lesson is the more important part.

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
- [From House to Estate](../house-and-estate/From%20House%20to%20Estate.md) — what several agents and a lot of history change.
