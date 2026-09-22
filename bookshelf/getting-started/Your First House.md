# Your First House

A house is the folder where your agent lives: its agent home (with CLAUDE.md, memory, and session logs) together with HQ, the folder where your projects and working files live. START-HERE.md at the root of this kit walks Claude Code through building one for you, but this page covers the same ground by hand, for when you're curious how it's built or want to set one up yourself.

## Step 1: Create a Folder

Create a new folder on your computer for your house. Remember: this folder must **not** be inside iCloud, OneDrive, Dropbox, or any cloud-synced folder.

Good locations:

- **Mac:** `~/My Agents/my-agent/`
- **Windows:** `C:\Users\YourName\My Agents\my-agent\`

Name it whatever makes sense — many people name it after their agent.

## Step 2: Ask Your Agent to Set Up Git

Open Claude Code inside the folder and ask it:

> Initialize a git repo here and create a .gitignore.

Then make the first commit:

> Commit everything with the message "Initial commit"

## Step 3: Connect to GitHub (Optional but Recommended)

If you want your house backed up and shareable, connect it to a GitHub repository. Ask Claude Code:

> Create a private GitHub repo for this project and push to it.

Claude Code will use the `gh` CLI to create the repository and push your files. Tell it whether you want the repo **private** (only you can see it) or **public** (visible to everyone).

> [!tip]
> If Claude Code says it can't find `gh`, you may need to install the GitHub CLI first. On Mac: `brew install gh`. On Windows: download from [cli.github.com](https://cli.github.com/).

## Step 4: Create a CLAUDE.md

CLAUDE.md is a special file that tells Claude Code about your house — what it's for, how it's organized, and what conventions to follow. Without it, Claude has no context about your project.

Ask Claude Code:

> Create a CLAUDE.md for this project. It's about [describe your house briefly].

Or write one yourself:

```markdown
# CLAUDE.md

This house is [what it is]. It's for [what you use it for].

## Structure

- [describe your folder layout, if any]

## Conventions

- [any rules you want Claude to follow]
```

Even a few lines make a big difference in how well Claude Code understands your house.

## Step 5: Verify Everything Works

Test the full loop:

1. Create a new file — even just "Hello, world!"
2. Say to Claude Code: "Commit and push my changes"
3. Visit your repository on github.com to confirm the files are there

If that works, you have a fully functional house with version control and an AI agent that understands it.

## What's Next

- **Start writing.** Don't over-organize upfront. Start with a flat folder of notes and add subfolders when you have enough related pages to justify them.
- **Evolve your CLAUDE.md as you go.** As your house develops conventions, add them so Claude stays current.
- **Invite collaborators** on GitHub if others will work in your house. They clone the repo, open the folder, and they're in.
