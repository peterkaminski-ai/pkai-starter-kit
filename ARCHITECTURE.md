# The shape of what you're building

The basics of the architecture — deliberately short. Read this before building (if you're the Claude) or whenever you're curious how the pieces fit (if you're the person).

## Two folders, two jobs

Your setup has exactly two parts, and the terms matter:

- The **assistant home** — where your assistant *lives*: its persona (`CLAUDE.md`), its memory, its session logs. Small, personal, permanent.
- The **headquarters** ("HQ") — where the *work* lives: your projects, working files, and a growing knowledge base about your world.

They are separate on purpose. The assistant is not a project, and your projects are not the assistant's mind. Keeping them apart is what lets each grow without tangling the other.

```
~/  (your home folder)
  My Assistants/                ← like My Documents, My Photos — the assistants live here
    <assistant-name>/           ← the assistant home
      CLAUDE.md                 ← persona: who your assistant is
      memory/                   ← what it remembers, indexed by MEMORY.md
      sessions/                 ← logs of your conversations
      inbox/  outbox/           ← things arriving, drafts awaiting your review
  Documents/
    <your-name>-hq/             ← the headquarters
      projects/                 ← one folder per thing you work on
      pkai-starter-kit/         ← this kit, kept as a reference library
```

(Unix-comfortable people sometimes prefer `~/.agents/<name>/` over `~/My Assistants/<name>/` — same idea, quieter address. And if you use git and your Documents folder is cloud-synced, the HQ moves to the top of your home folder instead — see `REQUIREMENTS.md`.)

## The daily geometry

**You launch from the assistant home.** Your launch command drops you there, your assistant reads its persona and memory, and then it *walks around* to wherever the work is — your HQ, usually, but not only.

**The HQ has no CLAUDE.md, ever.** It's a place, not a person. Your assistant brings itself along when it works there.

**The HQ is the hub, not the only destination.** Think of it as the switching center and the growing knowledge base — but it's completely in bounds for your assistant to help with projects *outside* it. In practice: smaller projects live inside `hq/projects/`; bigger ones (a book, an app, anything with its own life) get their own folder or repo elsewhere, and the HQ keeps a pointer and the notes.

## Everything is markdown

Everything your assistant knows and makes — persona, memory, session logs, project notes — is ordinary markdown files you can read in any text editor, audit at will, and take with you anywhere. No databases, no opaque state, no lock-in. This is a principle, not an implementation detail: **if you can't read it, it doesn't belong in your assistant.**

Memory deserves a special word, because it's what makes your assistant *yours*: each memory is one small file holding one fact, and `memory/MEMORY.md` is the index your assistant reads at the start of every session. Teach it something once and it's there for good — and you can open the folder and read (or fix) everything it remembers.

## The growth path

Start with one assistant and one HQ. As it earns trust, you widen what it may do on its own (its persona file has an authority table for exactly this). Later, if you want, the same shape scales: a second assistant with a different temperament in the same `My Assistants` folder, more projects inside and outside the HQ, and the HQ steadily becoming the well-organized memory of your working life. The pattern this kit teaches is the small end of that; nothing has to be redone to grow.
