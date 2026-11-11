# Your First House

This page is about **the shape of a house**: what's in it and why it's laid out the way it is. It isn't a way to build one. The only complete path is the kit's setup: `BUILD.md` at the root of the kit walks Claude Code through building your house, and `START-HERE.md` is the page for you. A house built by hand from this page would be missing most of what makes your agent work — its memory index, the scripts and hooks that give it a clock and keep two sessions from colliding, its skills, its settings — and your agent's charter expects all of them on its first turn.

## Two folders, side by side

A house is two folders: your **agent home** and your **HQ**. They sit side by side, and neither is ever inside the other.

- **The agent home** is where your agent lives: its charter (`CLAUDE.md`), its memory, its session logs, its inbox and outbox, its skills and settings. It's named after your agent, with "(agent)" on the end, at the top of your home folder:
  - **Mac:** `~/Lain (agent)/`
  - **Windows:** `C:\Users\YourName\Lain (agent)\`
- **The HQ** is where your projects and working files live. It's named after you, and it goes in your Documents folder:
  - **Mac:** `~/Documents/yourname-hq/`
  - **Windows:** `C:\Users\YourName\Documents\yourname-hq\`

The exception is a synced Documents folder (iCloud's "Desktop & Documents" on a Mac, or OneDrive's folder backup on Windows): then the HQ goes at the top of your home folder, beside the agent home. Neither folder is ever inside iCloud, OneDrive, Dropbox or any other cloud-synced folder, because git and cloud sync fighting over the same files causes conflicts and data loss.

A second agent, if you ever want one, gets its own agent home beside the first — `~/Wren (agent)/` — and shares the same HQ. Agents are never nested inside each other.

## Your agent's environment

In the Claude Desktop app, your agent has one environment, set up on its agent home. That's where every session with your agent starts. Your agent also works in the HQ; the environment holds only the agent home, and the app asks your permission the first time it works there. Your agent brings itself along when it works there; the HQ is a place, not an agent.

## Git: two repositories, no remote

Each folder is its own git repository, with its own history. Neither has a remote: your history lives on your computer, and nothing is uploaded anywhere. If git wasn't on your computer when setup ran, your agent started the install and turns on version control for both folders, with their first commits, as soon as git appears.

You don't need GitHub for your house. If you ever want an off-machine copy, that's a separate decision, and your agent pushes nowhere without your yes. One rule holds whatever you decide: the agent home holds your agent's memory, so it must never be public and never be shared with anyone else. A project that lives in its own repo is the place for collaborators, not your house (see [Setting Up a Project](Setting%20Up%20a%20Project.md)).

## Your agent's charter

`CLAUDE.md` is your agent's charter: who it is, how it works, and what it may do on its own. It lives in the agent home, and only there — the HQ never gets a `CLAUDE.md`. Setup makes the charter from one of the kit's persona files, filled in with your details.

After that, you don't need to edit it to teach your agent things. Tell your agent what you want — "I like short summaries", "the budget lives in the finance project" — and it saves a memory. When something should become a permanent rule in the charter, your agent drafts the change for you to read and install by hand; it never edits its own charter. See [Testing a Charter Edit](../your-house/Testing%20a%20Charter%20Edit.md).

## See it for yourself

Once your house is built and git is in place, try this in a session with your agent:

1. Ask: "Make a file in my HQ called hello.md that says Hello, world."
2. Say: "Commit my changes."
3. Say: "Show me the recent history" to confirm the commit is there.

## What's Next

- **Start writing.** Don't over-organize upfront. Start with a few notes and add folders when you have enough related pages to justify them.
- **Tell your agent as you go.** As your house develops conventions, say them; your agent saves them as memories so it stays current.
