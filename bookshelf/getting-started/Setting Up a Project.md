# Setting Up a Project

You have a project — maybe it already has some files, maybe you're starting fresh. You want it to have a proper home. This page covers the two homes a project can have, and how to ask your agent for either.

You don't open anything special for a project. You always work through your agent: in the desktop app's Code tab, start or continue a session in your agent's environment, and tell it what you want. Your agent goes to the project; the project doesn't get its own session. (A Claude app *Project* is a different thing from a project folder in your HQ. This page is about the folder kind.)

## The usual home: a folder in your HQ

Most projects are a folder in your HQ's `projects/` folder — `yourname-hq/projects/garden-plan/`, say. That's the default, and it's right for nearly all personal work. The project shares the HQ's git history, so it's version-controlled from the start, and your agent finds it without being told where to look.

Ask your agent:

> Let's start a project: I want to plan next year's vegetable garden.

Your agent uses its `start-a-project` skill. It asks for the project in your own words, asks a few questions until it's clear, suggests the folder, and makes a `README.md` (what the project is) and a status file (where it stands). Then it writes a first plan and shows it to you before building anything.

There's no `CLAUDE.md` in a project folder in your HQ. Your agent brings itself along; its own charter is all it needs.

## The exception: a repo of its own

Some projects are better off in a git repository of their own, separate from your house:

- you'll share it with people who shouldn't see the rest of your HQ;
- you'll publish it;
- it has its own tools, or would clutter your HQ's history.

Your agent will suggest this when it fits; you decide. A project's own repo goes in a folder **outside** your HQ and outside your agent home. This book uses one example location throughout: a `repos` folder at the top of your home folder.

- **Mac:** `~/repos/garden-plan/`
- **Windows:** `C:\Users\YourName\repos\garden-plan\`

Like your house, it must not be inside iCloud, OneDrive, Dropbox or any other cloud-synced folder.

Ask your agent:

> Let's start a project for the garden club's planting guide. It'll be shared with the club, so I think it needs its own repo in ~/repos.

Your agent creates the folder, sets up git there with its first commit, and makes the `README.md` and status file in the repo. Your HQ keeps a one-line pointer to it in `projects/README.md`, so your agent can always find it again. You keep working in your agent's environment; your agent walks over to `~/repos/garden-plan/` when the work is there. The first time it works there, the app may ask your permission, because the folder is outside your house; that's expected.

### A CLAUDE.md for a repo of its own

A project in its own repo may carry its own `CLAUDE.md`, describing the project's conventions. It's for anyone who opens the repo without your agent — a collaborator, or their agent. Keep it about the project, never about your agent: your agent's persona stays in its agent home. Your agent can draft it for you.

### Putting it on GitHub

A repo of its own starts with no remote, like your house. If you want it on GitHub — to share it, or to keep a copy off your computer — you'll need a GitHub account (see [GitHub Account Setup](GitHub%20Account%20Setup.md)). Then ask:

> Create a private GitHub repo for the garden club project and push to it.

Creating a remote and pushing to it are things your agent asks you about first, every time; this line is your yes. Say whether you want the repo **private** (only you and people you invite can see it) or **public** (visible to everyone). Collaborators you invite on GitHub get a copy of the project only; nothing in your agent home or HQ goes with it.

## What's Next

- **Add structure as you need it.** Don't over-organize upfront. Start with a few notes and add subfolders when a category has enough pages to justify one.
- **Keep the status file current.** Your agent updates it as things change, so "where does this stand?" always has an answer.
- **Tell your agent your conventions.** As the project develops habits, say them; your agent saves them as memories so it stays current.
