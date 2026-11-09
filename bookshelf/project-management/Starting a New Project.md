# Starting a New Project

A decision tree for when to make a new repo, when to add a folder to your HQ, and when to just open a notes file.

## The hierarchy

From lightest to heaviest:

1. **A note in your Inbox.** A scribble. Not a project yet.
2. **A folder under `projects/` in your HQ.** Most personal work fits here.
3. **A repo of its own.** When the project deserves isolation.
4. **A new GitHub organization.** When the project will spawn multiple repos under shared access.

You usually start light and graduate up as needed. Don't create a repo on day one for an idea you're still poking at.

## Stage 1: Just a note

You have an idea. It might be a project. It might just be a thought.

Write it as a note somewhere you'll see it again. Inbox, daily note, a project-y looking file in your house — doesn't matter. Keep it under a screen.

If you forget about it, it wasn't a project. If you keep coming back to it, it might be.

## Stage 2: A folder in your HQ

When the idea has enough shape to warrant its own attention, ask your agent to start a project. The `start-a-project` skill gets the wish in your words, asks until it's clear, and makes a folder in your HQ:

```
<your-name>-hq/
└── projects/
    └── my-new-idea/
        ├── README.md                  # the wish, the short version, where things are
        └── my-new-idea.status.md      # where it stands; your agent keeps it current
```

Most projects can live their entire lives here. You don't need a separate repo. If your house keeps git, you get version control "for free" because the HQ is already a git repo.

Use this when:

- The project is for you, or for people who already share your HQ.
- It doesn't need its own publishing pipeline.
- It doesn't need its own conventions different from the HQ's.
- You don't expect it to outgrow this scope.

## Stage 3: A repo of its own

Spin up a new repo when:

- **You want to share it with collaborators** who shouldn't see the rest of your house.
- **You want to publish it** — open source, MarkPub-published, or otherwise.
- **It has its own substantial conventions** that deserve a dedicated `CLAUDE.md`.
- **It has substantial size or activity** that would clutter the HQ's git history.
- **It's a code project** with a different set of build / test / deploy concerns from your HQ.

A mortgage-calculator app would graduate to its own repo, because it's a React app with its own toolchain. The "research agents" project might stay in the HQ until it produces something share-worthy.

The mechanics:

```bash
mkdir ~/repos/my-new-project     # outside your HQ, and outside anything cloud-synced
cd ~/repos/my-new-project
# (let your agent set it up: README.md, my-new-project.status.md, .gitignore, git init — no remote)
```

Or, more typically: **let your agent do it.**

> I want to start `my-new-project` as its own repo at `~/repos/my-new-project`. Initialize git with an appropriate .gitignore, write the README and status file, add a starter CLAUDE.md for the project's own conventions, make the initial commit, and add a pointer to it in the HQ's `projects/README.md`.

Notice what isn't in that request: a remote. Your agent asks before creating any remote (a GitHub repo, say) and before pushing to one. When you do want one, say so, and say whether it should be private or public.

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
- **From folder to repo:** you want to send someone a link, or you want to set up a CI workflow, or the project has eaten the HQ's git history.
- **From repo to organization:** you find yourself making a second related repo and wishing they were grouped.

Don't preempt the graduation. Most projects fail to graduate, and a folder is cheap to throw away. A repo is mildly expensive to clean up. An empty organization is a tiny rebuke from your past self.

## Don't move backward casually

It's painful to consolidate two repos back into one, and it's painful to dissolve an organization. So when you do graduate up, make sure the project actually wants to live there.

The exception: when a project ends. Archive the repo, leave the organization alone, move on. GitHub is happy to keep your archived repos for free.

## See also

- [Project as Repo](Project%20as%20Repo.md) — what each project folder looks like inside.
- [Working With Agents](Working%20With%20Agents.md) — when to add agent-shaped scaffolding to a project.
- [The Iteration Loop](The%20Iteration%20Loop.md) — what to do once you've decided where the project lives.
