# Your First Commit

Git uses three main actions — **commit**, **pull**, and **push**. Commit is the one your house uses every day: it saves your work on your computer. Pull and push only come in once you've added a remote, such as a GitHub repository, which is optional. You don't need to learn any Git commands. Claude Code handles all of it for you. You just use plain English.

## The Three Actions

### Commit — "Save a checkpoint"

Saves a snapshot of your changes on your computer. Think of it as a named save point you can always come back to.

**When to do it:** Often. Finished editing a page? Commit. About to take a break? Commit. The short description helps you (or someone else) remember what changed. Your agent also commits on its own at natural points, such as when you wrap up a session.

### Pull — "Grab the latest" (only with a remote)

Downloads the latest changes from a remote such as GitHub (anything that's been pushed since you last checked). Your house starts with no remote, so there's nothing to pull until you add one.

**When to do it:** If you've added a remote that someone else also pushes to, pull when you sit down to work, before you start editing.

### Push — "Send to GitHub" (only with a remote)

Uploads your committed changes to a remote such as GitHub, so there's a copy off your computer.

**When to do it:** Only once you've added a remote, and only when you say so — your agent asks before it pushes anywhere. Your agent home holds your agent's memory, so never push it anywhere public or shared.

## The Daily Routine

| When | What to tell Claude Code |
|------|--------------------------|
| Finished a chunk of work | "Commit — updated the project notes" |
| Taking a break | "Commit so nothing is lost" |
| Not sure what's going on | "What's changed?" |

If you've added a remote, add "Pull the latest" at the start of a session and "push" when you want a copy sent, and your agent will check with you before pushing.

## Saying It in Plain English

You don't need to memorize specific phrases. Claude Code understands natural language. Here are some examples:

**Saving your work:**
- "Commit everything"
- "Save my work"
- "Checkpoint this — I updated the meeting notes"

**Checking status:**
- "What's changed?"
- "Show me the recent history"

**Syncing, if you've added a remote:**
- "Pull and push"
- "Is everything synced to GitHub?"
- "What do we have that isn't pushed?"

> [!tip]
> If you do have a remote that others push to, say **"pull and push"** together. This grabs the latest changes and sends yours in one go, which avoids sync conflicts.

## Try It Now

If you set up your house in the previous step, try the full cycle:

1. Open Claude Code in your house folder
2. Create or edit a file
3. Say: **"Commit — my first commit"**
4. Say: **"Show me the recent history"**

Claude Code will save your changes as a commit on your computer, and the history will show it at the top.

## If Something Goes Wrong

Don't panic. Git keeps a complete history of everything, so nothing is truly lost. If you see an error or something looks weird, just describe the problem to Claude Code — it can usually sort it out.

Common situations:

- **"Merge conflict"** — Two people edited the same part of the same file. Claude Code can help you resolve it. This is rare in solo work.
- **"Nothing to commit"** — You haven't made any changes since your last commit. That's fine.
- **"Push rejected"** — Only happens with a remote: someone else pushed changes while you were working. Pull first, then push again. (Saying "pull and push" avoids this.)
