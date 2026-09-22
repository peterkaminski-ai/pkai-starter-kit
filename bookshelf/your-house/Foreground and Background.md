# Foreground and Background

The first thing a working house needs is a way to do two things at once. You're talking to your agent about one matter; a long job — a research sweep, a big rewrite, a migration of old notes — is grinding on in another window. Both are your agent. Neither may overwrite the other. That's the whole design problem, and the answer is a pair of roles.

## The two roles

The **foreground** is the instance you're talking to. It owns everything shared: the memory, the charter, commits to the house, anything that goes out (a message, a push). There is exactly one foreground at a time, and it's whichever one you're talking to.

A **background** instance is the same agent started a second time on one scoped job. It can *read* everything. It *writes* only inside its own scratch folder. It doesn't commit shared folders, doesn't touch memory or the charter, doesn't send anything, doesn't talk to other agents. When it's done it leaves a handoff, and the foreground integrates the handoff by copying what belongs in the house into the house.

Four pairs hold the distinction, and each is worth saying once:

- **persistent / ephemeral** — the foreground is the agent; a background instance exists for one job and is archived after.
- **host / guest** — the foreground lives here; a background instance is a guest in its own room.
- **definitive / provisional** — what the foreground writes is the record; what a background instance writes is a proposal until integrated.
- **frontstage / backstage** — you see the foreground; the background works out of sight and reports.

Houses pick different pairs for the same distinction; use your house's words, and when you work with another house, say which pair you mean. (One pair to avoid: *source / echo*. A background instance isn't a copy of the foreground; it's the same agent, narrowed.)

## The file lifecycle

Every background job is a folder, `bg/<job-name>/` in the agent home, with four files in sequence:

| File | Written by | Means |
|---|---|---|
| `task.md` | foreground | the assignment — the outcome wanted, the completion condition, the boundaries |
| `status.md` | background, throughout | a living checkpoint: done, decided, next — readable cold |
| `handoff.md` | background, at the end | "here's what I did; here's what needs integrating" |
| `DONE` | background, last | an empty file: *I have actually stopped* |

The `DONE` marker matters more than it looks. A `handoff.md` invites more work — you might read it and hand the instance a follow-up. The only signal that it's safe to integrate and archive is the marker. An instance that exits without writing it, and an instance that's still writing, look the same from outside; the marker is how they don't.

## How it goes

1. The foreground writes `task.md` — as an outcome, not a step list. The instance plans its own path.
2. You (or the foreground) open a second terminal in the agent home and start the agent with one line: *you are a background instance; read `bg/<job>/task.md` and begin.* The `foreground-background` skill carries the instructions it follows.
3. You carry on in the foreground. Check `status.md` when you're curious; don't poll.
4. When `DONE` appears, the foreground reads `handoff.md` and integrates: files copied to where they belong, memories saved properly, commits made under the foreground's own hand. Anything that needs your decision is asked.
5. The job folder moves to `bg/archive/`.

## Why the boundary holds

Nothing in the tool enforces this. The boundary is in the charter — the background instance is told "you don't write shared state" and it obeys, and the foreground is told "check for handoffs at the start of a session" and does. That's enough, and it's also the point: the same agent, given a narrower charter for one run, behaves inside it. If you find yourself wanting the tool to enforce it, you've found a job for a hook (see [Where Instructions Take Hold](../keeping-yourself-safe/Where%20Instructions%20Take%20Hold.md)), and that's fine too.

## When to use it

When a job is long, self-contained, and doesn't need you turn by turn. Not for a five-minute task; the launch and the integration cost more than the job. Not when two instances would edit the same thing — that's a question for you, not a race. And never to get around a block: a background instance under a narrower charter has *less* room, not more.
