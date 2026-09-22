# The shape of what you're building

The basics of the architecture — deliberately short. Read this before building (if you're the Claude) or whenever you're curious how the pieces fit (if you're the person).

## Two folders, one house

Your setup has exactly two parts, and the terms matter:

- The **agent home** — where your agent *lives*: its persona (`CLAUDE.md`), its memory, its session logs, its skills. Small, personal, permanent.
- The **headquarters** ("HQ") — where the *work* lives: your projects, working files, and a growing knowledge base about your world.

Together they are your **house**: the whole thing you build and live in. The two parts are separate on purpose. The agent is not a project, and your projects are not the agent's mind. Keeping them apart is what lets each grow without tangling the other.

```
~/  (your home folder)
  My Agents/                    ← like My Documents, My Photos — the agents live here
    <agent-name>/               ← the agent home
      CLAUDE.md                 ← persona: who your agent is
      memory/                   ← what it remembers, indexed by MEMORY.md
      sessions/                 ← logs of your conversations
      inbox/  outbox/           ← things arriving, drafts awaiting your review
      .claude/skills/           ← the skills it has taken on
  Documents/
    <your-name>-hq/             ← the headquarters
      projects/                 ← one folder per thing you work on
      pkai-starter-kit/         ← this kit, kept as a reference library
```

(Unix-comfortable people sometimes prefer `~/.agents/<name>/` over `~/My Agents/<name>/` — same idea, quieter address. And if you use git and your Documents folder is cloud-synced, the HQ moves to the top of your home folder instead — see `REQUIREMENTS.md`.)

## What to call it

This kit says **house**: the agent home and the HQ together, the whole thing you build and live in. It's one word at every size — a house with one agent and a house with six agents and years of knowledge are both a house; the second is a larger one, not a different thing. Other people have called the same thing a home, an office, an estate, their universe. Setup asks you to name yours; we suggest *my house* in conversation and *the <your name> house* when it needs a proper name (a family might say *our house*), and you can choose any word you like better. Whatever you choose, your agent uses it consistently.

## The daily geometry

**You launch from the agent home.** Your launch command drops you there, your agent reads its persona and memory, and then it *walks around* to wherever the work is — your HQ, usually, but not only.

**The HQ has no CLAUDE.md, ever.** It's a place, not a person. Your agent brings itself along when it works there.

**The HQ is the hub, not the only destination.** Think of it as the switching center and the growing knowledge base — but it's completely in bounds for your agent to help with projects *outside* it. In practice: smaller projects live inside `hq/projects/`; bigger ones (a book, an app, anything with its own life) get their own folder or repo elsewhere, and the HQ keeps a pointer and the notes.

## Everything is markdown

Everything your agent knows and makes — persona, memory, session logs, project notes — is ordinary markdown files you can read in any text editor, audit at will, and take with you anywhere. No databases, no opaque state, no lock-in. This is a principle, not an implementation detail: **if you can't read it, it doesn't belong in your agent.**

Memory deserves a special word, because it's what makes your agent *yours*: each memory is one small file holding one fact, and `memory/MEMORY.md` is the index your agent reads at the start of every session. Teach it something once and it's there for good — and you can open the folder and read (or fix) everything it remembers.

## Where instructions take hold

Four places tell your agent how to behave, and they hold with different strength. From strongest to weakest:

1. **The harness** — Claude Code itself: its permission settings, its safety classifier, its hooks. When it says no, that no is enforced by the tool, and nothing written in a file can override it. It fails *loudly*.
2. **The charter** — `CLAUDE.md`. Read every session; the closest thing to permanent. Something you want to *always* happen goes here. It fails *structurally*: a bad line shapes every session until someone fixes it.
3. **Memory** — strongly advisory, not permanent. Good for facts about your world and how you like things done; too weak for rules that must never slip. It fails *silently*: a memory just stops being read one day.
4. **The conversation** — what you say right now. Strongest in the moment, gone at `/clear`.

One consequence worth knowing on day one: **a permission written in the charter or in memory is not a permission in the harness.** The classifier never reads those files. When your agent is blocked, the fix is a settings change you make by hand — never a workaround, and never switching a safety layer off.

## Skills

A skill is a folder your agent can take on: one `SKILL.md` saying what it does and when it applies, plus whatever scripts or references it needs, plus its own lineage, licence and credits so it can travel alone. Skills live in the agent home, at `.claude/skills/<name>/`, because they belong to the agent, not the machine. The kit ships a handful; your agent can write more; you can trade them with other houses. They're seeds, not the lesson — a skill is the printed-book version of something better learned live — but they are the standard way to carry a lesson from one house to another.

## The stairs

People come to this in steps, and the steps are the person's, not the software's: you watch someone else use an agent → you read about it → you try a starter kit, or buy an agent in a box → you run an agent on your own machine → you find it isn't going to hurt you, and you chat with it → and then you do real work with it. This kit is offered at the third step. The three questions the setup asks you (`START-HERE.md`) are about which step you're on.

## The growth path: a larger house

Start with one agent and one HQ. As it earns trust, you widen what it may do on its own (its persona file has an authority table for exactly this). Later, if you want, the same shape scales: a second agent with a different temperament in the same `My Agents` folder; a **background** instance of your agent working a long job in its own scratch space while you keep talking to the **foreground** one; more projects inside and outside the HQ; the HQ steadily becoming the well-organized memory of your working life.

When a house has grown that far — several agents, foreground and background, a body of accumulated knowledge that the agents keep and find their way around — it is still a house, just a larger one, and it needs a few conventions a small house doesn't. What grows is capacity, not only size: a larger house can hold more, do more, and stay coherent while it does. Nothing has to be redone to get there; the pattern this kit teaches is the small end of that. The **PKAI benchmark** (`LINEAGE.md` says where it lives) describes the whole of it; the *working* path in `START-HERE.md` and the `your-house` book on the shelf are the first two stairs up.
