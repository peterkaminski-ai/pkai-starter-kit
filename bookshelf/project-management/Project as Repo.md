# Project as Repo

When you're new to this stack, house and repo and project sound like they might be the same thing. They aren't, and keeping them straight makes everything else easier.

Your **house** is two folders. The **agent home** is where your agent lives: its charter (`CLAUDE.md`), its memory, its session logs, its skills. The **HQ** is where the work lives. A **project** is a folder in the HQ, at `projects/<slug>/`. A **repo** is a folder with a git history: if your house keeps git, the agent home and the HQ are one repo each, and a project gets a repo of its own only when it needs one.

The container for a project is a folder. That folder is, simultaneously:

- A **place for the work** — its files, its README, its status file.
- A **slice of git history** — for free, from the HQ's own repo, if your house keeps git.
- A **working directory for your agent** — it starts in its home and walks over to work here.

These aren't different things laid on top of each other. They're roles of the same folder.

## The collapse

The same folder plays all the roles, and most of them add nothing to it:

| Role | What it adds |
|---|---|
| The project | `README.md`, `<slug>.status.md` |
| Git | nothing in the folder — the HQ's `.git/` covers it |
| Your agent | nothing — it brings itself along, so there's no `CLAUDE.md` here |
| Publishing | whatever config your publishing tool needs, if you publish it as a website |

You don't pick one and commit to it. You let the folder be all of them.

## Why one folder per project

Two reasons:

1. **Boundary for attention.** When you and your agent work on a project, its folder is where the attention goes. If each project has its own folder, "read the project's README and status file" is all the catching-up a fresh session needs. If the project is scattered across a catch-all folder, you're spending tokens and risk on irrelevant context.

2. **Boundary between the agent and the work.** Memory isn't in the project. Your agent's charter, memory and session logs stay in its home; the project folder holds the project. When you switch projects, your agent stays the same agent and walks to a different folder.

## When *not* to make a new repo

Most work doesn't need its own repo. The default is a folder under `projects/` in your HQ:

```
<your-name>-hq/                          # your HQ
├── .git/                                # if your house keeps git
├── projects/
│   ├── README.md                        # one line per project, including any that live elsewhere
│   ├── research-agents/
│   │   ├── README.md
│   │   └── research-agents.status.md
│   ├── discord-signup/
│   │   ├── README.md
│   │   └── discord-signup.status.md
│   └── cat-house/
│       └── ...
└── ...
```

For lots of personal work, this is the right grain. The whole HQ gets one history. Each project is just a folder. There's no `CLAUDE.md` anywhere in the HQ, and your agent's memory stays in its home.

## When *to* make a new repo

Spin out a new repo when:

- The project will be **shared with collaborators** who shouldn't see the rest of your house.
- The project will be **made public** at some point — open source, as a website, or otherwise.
- The project has **its own substantial conventions** (different language, framework, build, etc.) that deserve a dedicated `CLAUDE.md`.
- The project has **substantial size or activity** that would clutter the HQ's git history.

The repo lives outside the HQ, and the HQ keeps a one-line pointer to it in `projects/README.md`. Your agent won't create a remote for it, or push to one, without your yes.

See [Starting a New Project](Starting%20a%20New%20Project.md) for the decision walk-through.

## What lives at the root

When you've decided a project deserves its own folder (in the HQ, or a repo of its own), the root should have:

- **`README.md`** — what this project is, in human terms: the wish that started it, a three-sentence version, and where things are.
- **`<slug>.status.md`** — where it stands: current state, next actions, decisions and their reasons. Your agent keeps it current.
- **The plan** — what you and your agent agreed to do, refined over a few iterations. In the README, or a `PLAN.md` beside it.
- **`CLAUDE.md`** — only in a project with its own repo: that project's conventions, vocabulary, do's and don'ts, for anyone who opens it without your agent. Keep it to the project, never your agent's persona.

What doesn't live there: memory and session logs. Those stay in your agent home, whatever project they're about.

## Where the folders go

Your agent home and HQ are wherever setup put them: the agent home at the top of your home folder, as `<Name> (agent)`, and the HQ in Documents, or at the top of your home folder if Documents is synced. Neither is ever inside the other. A project with its own repo goes outside the HQ, and wherever it goes, **don't put it inside iCloud, OneDrive, Dropbox, or any cloud-synced directory.** Git and cloud sync collide and produce conflicts and corruption.

On a Mac, `~/Documents` is often synced to iCloud, and on Windows, OneDrive often syncs Documents, so a folder near the top of your home folder is the safer choice. This book uses `~/repos/<name>/` for a repo of its own.

Your agent can work in that folder from its usual environment. If you want to see the folder in the desktop app's file pane too, grant it to your agent's environment, the way setup granted the HQ.
<!-- VERIFY(cold-start): the exact label for granting another folder to an environment -->

## See also

- [Starting a New Project](Starting%20a%20New%20Project.md) — the decision tree for a folder in your HQ vs. a repo of its own.
- [The Iteration Loop](The%20Iteration%20Loop.md) — what to do once you have your project folder.
- [Memory Across Sessions](Memory%20Across%20Sessions.md) — what `CLAUDE.md` and `MEMORY.md` are for.
