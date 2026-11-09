# Your First House

A house is where your agent lives and works: its agent home (with CLAUDE.md, memory, and session logs) together with HQ, the folder where your projects and working files live. BUILD.md at the root of this kit walks Claude Code through building one for you (START-HERE.md is the page for you), but this page covers the same ground by hand, for when you're curious how it's built or want to set one up yourself.

## Step 1: Create the Folders

A house is two folders: the agent home and HQ. Create both on your computer. Remember: if you'll use git, neither folder may be inside iCloud, OneDrive, Dropbox, or any cloud-synced folder.

Good locations:

- **Mac:** `~/My Agents/my-agent/` for the agent home, and `~/Documents/yourname-hq/` for HQ
- **Windows:** `C:\Users\YourName\My Agents\my-agent\` for the agent home, and `C:\Users\YourName\Documents\yourname-hq\` for HQ

Name them whatever makes sense — many people name the agent home after their agent. (If your Documents folder is cloud-synced, put HQ at the top of your home folder instead.)

## Step 2: Ask Your Agent to Set Up Git

Git is optional, but recommended: it keeps a private history of everything, so nothing can be lost. Open Claude Code in each folder in turn and ask it:

> Initialize a git repo here and copy in the kit's .gitignore.

Then make the first commit:

> Commit everything with the message "Initial commit"

That's two local repos, one per folder, with no remote. Your history lives on your computer, and nothing is uploaded anywhere.

## Step 3: GitHub (Optional)

You don't need GitHub for your house. If you later want an off-machine copy, that's a separate decision, and your agent pushes nowhere without your yes. One rule holds whatever you decide: the agent home holds your agent's memory, so it must never be public and never be shared with anyone else. A project that lives in its own repo is the place for collaborators, not your house (see [Setting Up a Project](Setting%20Up%20a%20Project.md)).

## Step 4: Your Agent's CLAUDE.md

CLAUDE.md is your agent's charter: who it is, how it works, and what it may do on its own. It lives in the agent home, and only there — HQ never gets a CLAUDE.md. Your agent brings itself along when it works in HQ. Setup makes the charter by copying one of the kit's persona files (in `personas/`) into the agent home as `CLAUDE.md` and filling in your details.

After that, you don't need to edit it to teach your agent things. Tell your agent what you want — "I like short summaries", "the budget lives in the finance project" — and it saves a memory. When something should become a permanent rule in the charter, your agent drafts the change for you to read and install by hand; it never edits its own charter. See [Testing a Charter Edit](../your-house/Testing%20a%20Charter%20Edit.md).

## Step 5: Verify Everything Works

Test the full loop:

1. Create a new file in HQ — even just "Hello, world!"
2. Say to Claude Code: "Commit my changes"
3. Say: "Show me the recent history" to confirm the commit is there

If that works, you have a fully functional house with version control and an AI agent that understands it.

## What's Next

- **Start writing.** Don't over-organize upfront. Start with a flat folder of notes and add subfolders when you have enough related pages to justify them.
- **Tell your agent as you go.** As your house develops conventions, say them; your agent saves them as memories so it stays current.
