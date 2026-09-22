# Setting Up a Project

You have a project — maybe it already has some files, maybe you're starting fresh. You want to turn it into a proper workspace: its own folder, its own Claude Code context, and a GitHub repo for backup and collaboration. Unlike your house, a project is a repo — an isolated workspace with its own git history, separate from your agent home and HQ.

This guide assumes you already have Claude Code and a GitHub account set up. If not, start with the setup pages earlier in this book.

## Prerequisites

- Claude Code installed and authenticated
- A GitHub account
- The `gh` CLI (GitHub's command-line tool) — Claude Code can install it for you if you don't have it

## 1. Choose a Location

Your project folder should **not** be inside iCloud, OneDrive, Dropbox, or any other cloud-synced folder. Git and cloud sync don't mix — you'll get conflicts and corrupted files.

A good location is a dedicated folder like `~/Projects/` (Mac), or `C:\Users\YourName\Projects\` (Windows).

If you already have a project folder somewhere else, move it to a safe location first.

## 2. Create or Move Your Project Folder

If you're starting fresh, create a new empty folder in your safe location and name it after your project.

If you have existing files, move them into a folder in your safe location.

## 3. Create a CLAUDE.md

This is an important step. CLAUDE.md tells Claude Code what your project is about, what conventions to follow, and what matters. Without it, Claude is flying blind.

Ask Claude Code:

> Create a CLAUDE.md for this project. It's about [describe your project in a sentence or two].

Or write one yourself. Even a few lines make a big difference:

```markdown
# CLAUDE.md

This project is [what it is]. It's for [what you use it for].

## Structure

- [describe your folder layout, if any]

## Conventions

- [any rules you want Claude to follow]
```

## 4. Initialize Git

Open Claude Code in the project folder and say:

> Initialize a git repo here and create a .gitignore.

Claude Code will run `git init` and create a `.gitignore` that excludes files that shouldn't be tracked.

Then make the first commit:

> Commit everything with the message "Initial commit"

## 5. Create a GitHub Repository

Ask Claude Code:

> Create a private GitHub repo for this project and push to it.

Tell Claude whether you want the repo **private** (only you and people you invite can see it) or **public** (visible to everyone). Claude Code will use the `gh` CLI to create the repo and push.

> [!tip]
> If Claude Code says it can't find `gh`, install the GitHub CLI first. Mac: `brew install gh`. Windows: download from [cli.github.com](https://cli.github.com/).

## 6. Verify Everything Works

Test the full loop:

1. Create or edit a file in the project
2. Ask Claude Code: "Commit and push my changes"
3. Visit your repository on github.com to confirm the files are there

You now have a working project with version control and an AI agent that understands it.

## What's Next

- **Add structure as you need it.** Don't over-organize upfront. Start with a flat folder of notes and add subfolders when a category has enough pages to justify one.
- **Evolve CLAUDE.md as you go.** As your project develops conventions, add them so Claude stays current.
- **Invite collaborators** on GitHub if others will work in the project. They clone the repo, open the folder, and they're in.
