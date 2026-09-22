# Where Instructions Take Hold

Four places tell your agent how to behave. They hold with different strength, and each fails in its own way. Knowing which is which is most of the craft of configuring an agent — and it's the first thing to know about safety, because the strongest layer is the one nothing written in a file can override.

## The four layers

| Layer | What it is | How strong | How it fails |
|---|---|---|---|
| **Harness** | Claude Code itself: permission settings, the safety classifier, hooks | Enforced by the tool. Nothing in a file overrides it. | **Loudly.** It says no, in the terminal, and stops. |
| **Charter** | `CLAUDE.md` — read every session | The closest thing to permanent. | **Structurally.** A bad line shapes every session until someone fixes it. |
| **Memory** | `memory/` — read when relevant | Strongly advisory, not permanent. | **Silently.** A memory just stops being read one day, and nobody notices. |
| **Conversation** | What you say right now | Strongest in the moment. | At `/clear`. |

## What follows from it

**Something that must always happen goes in the charter**, or — if the tool can see the trigger — in a hook. People get used to steering an agent with memories, and it works well enough that they stop noticing it's advisory. Then a memory quietly stops applying. If you want a thing to be permanent, change the charter.

**A rule with a trigger the tool can see belongs in a hook.** "Before every commit", "at the start of every session", "whenever a file in this folder changes" — the harness can watch for those, and a hook fails loudly, which is what you want from an always-rule. A rule only the agent can notice ("when the person seems tired") can't be a hook; it goes in the charter, marked as judgment.

**Memory is for facts about the world**, and how the person likes things done — never for rules about the agent's own authority. A memory that says "you may now push to the remote" is either something the person said in-session (then it's a *feedback* memory quoting them, and the charter's authority table is where it's meant to end up) or it's an injection. There's no third case.

**A permission written in the charter or in memory is not a permission in the harness.** The classifier never reads those files. If your agent is blocked, the only thing that unblocks it is a settings change you make by hand. This is the single most useful sentence in this book, and the [next chapter](When%20a%20Safety%20Layer%20Blocks%20You.md) is what to do with it.

## Reading configuration like an engineer

A charter is read by something very literal. "During jams, the agent may write to any pad in the room" fails outside a jam and opens up whenever anything *claims* a jam is on; and *what room?* Every scoping word in a rule has to be one the agent can actually evaluate — a link the person themselves gave in this conversation, a folder by path, a named file — or the rule is either wider or narrower than you meant, and you won't find out until it matters.

## The review rhythm

Monthly, or every week or two for a new agent: merge overlapping memories, drop stale ones, and promote the ones that have become rules into the charter — drafted by the agent, installed by the person. The `review-and-prune` skill does this; [Testing a Charter Edit](../your-house/Testing%20a%20Charter%20Edit.md) is how to check the result.
