# Starting a New Project

A decision tree for when to make a new repo, when to add a sub-folder to an existing one, and when to just open a notes file.

## The hierarchy

From lightest to heaviest:

1. **A note in your Inbox.** A scribble. Not a project yet.
2. **A folder under `Projects/` in an existing house.** Most personal work fits here.
3. **A new house / repo of its own.** When the project deserves isolation.
4. **A new GitHub organization.** When the project will spawn multiple repos under shared access.

You usually start light and graduate up as needed. Don't create a repo on day one for an idea you're still poking at.

## Stage 1: Just a note

You have an idea. It might be a project. It might just be a thought.

Write it as a note somewhere you'll see it again. Inbox, daily note, a project-y looking file in your house — doesn't matter. Keep it under a screen.

If you forget about it, it wasn't a project. If you keep coming back to it, it might be.

## Stage 2: A folder in an existing house

When the idea has enough shape to warrant its own attention, create a sub-folder:

```
Atlas/
└── Projects/
    └── My New Idea/
        ├── wish.md
        └── ...
```

Most projects can live their entire lives here. Pete's "Pete's Sample Project" example in the founders KB lives this way. You don't need a separate house, you don't need a separate repo. You get version control "for free" because the parent house is already a git repo.

Use this when:

- The project is for you, or for a small group already in this house.
- It doesn't need its own publishing pipeline.
- It doesn't need its own conventions different from the parent house's.
- You don't expect it to outgrow this scope.

## Stage 3: A repo of its own

Spin up a new repo when:

- **You want to share it with collaborators** who shouldn't see the rest of your house.
- **You want to publish it** — open source, MarkPub-published, or otherwise.
- **It has its own substantial conventions** that deserve a dedicated `CLAUDE.md`.
- **It has substantial size or activity** that would clutter the parent house's git history.
- **It's a code project** with a different set of build / test / deploy concerns from a notes house.

Pete's mortgage-calculator example from the call would graduate to its own repo, because it's a React app with its own toolchain. The "research agents" project might stay in the house until it produces something share-worthy.

The mechanics:

```bash
mkdir ~/Documents/GitHub/my-new-project
cd ~/Documents/GitHub/my-new-project
# (let Claude Code initialize: CLAUDE.md, .gitignore, git init, gh repo create)
```

Or, more typically: **let Claude Code do it.**

> I want to spin up `my-new-project` as its own repo at `~/Documents/GitHub/my-new-project`. Initialize git with an appropriate .gitignore, write a starter CLAUDE.md, make the initial commit, and create a private GitHub repo for it.

## Stage 4: A GitHub organization

You're ready for an organization when:

- The project is going to spawn **multiple related repos** that should share access control.
- It's going to feel more "professional" — a startup, a public initiative, a venture.
- Multiple collaborators need access to a stable group of repos at once.

Pete creates an organization for every startup he's started, and even for things that "might have turned into a startup." Cost is low (it's free), and it costs nothing to abandon if it doesn't pan out.

Naming: `github.com/<org-name>/<repo-name>`. Pick the org name to look the way you'd want it to look on a business card.

## When to graduate up

The signal that you should graduate from one stage to the next:

- **From note to folder:** you've come back to this idea three times.
- **From folder to repo:** you want to send someone a link, or you want to set up a CI workflow, or the project has eaten the parent house's git history.
- **From repo to organization:** you find yourself making a second related repo and wishing they were grouped.

Don't preempt the graduation. Most projects fail to graduate, and a folder is cheap to throw away. A repo is mildly expensive to clean up. An empty organization is a tiny rebuke from your past self.

## Don't move backward casually

It's painful to consolidate two repos back into one, and it's painful to dissolve an organization. So when you do graduate up, make sure the project actually wants to live there.

The exception: when a project ends. Archive the repo, leave the organization alone, move on. GitHub is happy to keep your archived repos for free.

## See also

- [Project as Repo](Project%20as%20Repo.md) — what each project folder looks like inside.
- [Working With Agents](Working%20With%20Agents.md) — when to add agent-shaped scaffolding to a project.
- [The Iteration Loop](The%20Iteration%20Loop.md) — what to do once you've decided where the project lives.
