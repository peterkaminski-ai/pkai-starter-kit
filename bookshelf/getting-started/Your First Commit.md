# Your First Commit

Git uses three main actions — **commit**, **pull**, and **push** — to save your work and keep it synced with GitHub. You don't need to learn any Git commands. Claude Code handles all of it for you. You just use plain English.

## The Three Actions

### Pull — "Grab the latest"

Downloads the latest changes from GitHub (anything that's been pushed since you last checked).

**When to do it:** Every time you sit down to work. Pull first, then start editing.

### Commit — "Save a checkpoint"

Saves a snapshot of your changes on your computer. Think of it as a named save point you can always come back to.

**When to do it:** Often. Finished editing a page? Commit. About to take a break? Commit. The short description helps you (or someone else) remember what changed.

### Push — "Send to GitHub"

Uploads your committed changes to GitHub so they're backed up in the cloud and visible to collaborators.

**When to do it:** After a commit, or after several commits. You can batch up a few commits and push them all at once.

## The Daily Routine

| When | What to tell Claude Code |
|------|--------------------------|
| Starting your session | "Pull the latest" |
| Finished a chunk of work | "Commit and push — updated the project notes" |
| Taking a break | "Commit and push so nothing is lost" |
| Not sure what's going on | "What's changed?" |

## Saying It in Plain English

You don't need to memorize specific phrases. Claude Code understands natural language. Here are some examples:

**Saving your work:**
- "Commit everything and push"
- "Save my work and send it to GitHub"
- "Checkpoint this — I updated the meeting notes"

**Syncing with GitHub:**
- "Pull and push"
- "Pull and push everything, including new files"
- "Is everything synced to GitHub?"

**Checking status:**
- "What's changed?"
- "What do we have that isn't pushed?"
- "Anything new from other people?"

> [!tip]
> A good habit: say **"pull and push"** together. This grabs the latest changes and sends yours in one go, which avoids sync conflicts.

## Try It Now

If you set up your house in the previous step, try the full cycle:

1. Open Claude Code in your house folder
2. Say: **"Pull the latest"**
3. Create or edit a file
4. Say: **"Commit and push — my first commit"**

Claude Code will save your changes and upload them to GitHub. You can verify by visiting your repository on github.com — you should see your files there.

## If Something Goes Wrong

Don't panic. Git keeps a complete history of everything, so nothing is truly lost. If you see an error or something looks weird, just describe the problem to Claude Code — it can usually sort it out.

Common situations:

- **"Merge conflict"** — Two people edited the same part of the same file. Claude Code can help you resolve it. This is rare in solo work.
- **"Nothing to commit"** — You haven't made any changes since your last commit. That's fine.
- **"Push rejected"** — Someone else pushed changes while you were working. Pull first, then push again. (Saying "pull and push" avoids this.)
