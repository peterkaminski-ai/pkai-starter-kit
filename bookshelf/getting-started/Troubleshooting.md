# Troubleshooting

Common problems and how to fix them. If you don't see your issue here, describe it to your agent in the Code tab — it can often diagnose and fix problems for you.

## The Desktop App

### I'm talking to Claude, but it doesn't know my house

You're probably in the chat, not the Code tab. Switch to the **Code** tab and start or continue a session in your agent's environment. See [First Day in Desktop](First%20Day%20in%20Desktop.md).

### My agent doesn't seem to be itself

Check which environment the session is in. Your agent's environment is on its agent home, the `<AgentName> (agent)` folder; a session started on some other folder is plain Claude Code, with no persona and no memory. Start a new session in your agent's environment.

### A session says it's a guest

Another session for the same agent is still open. That's fine: the guest works normally and leaves its notes for the main session. If you meant to have just one, tell the other session you're shutting it down, and archive it.

### I can't see a folder in the app's file pane

Your agent can sometimes read a folder before the file pane shows it. Grant the folder to your agent's environment, or use "Show in Finder" to look at it outside the app.

### My phone can't find my agent

Remote Control turns off when you quit the Desktop app. Open the app, open your agent's session, and turn Remote Control back on. Make sure your computer isn't asleep.

## Installing Git

### The Apple dialog for the Command Line Tools disappeared (Mac)

It's probably behind another window. Check all your displays and use Cmd+Tab to look for an "Install" window. If it's really gone, tell your agent; it can start the install again.

### The download time estimate is absurd (Mac)

Ignore the first estimate — it may say 16 hours. It can take minutes, or an hour or more, and the progress bar may restart partway through. This is normal, and nothing is waiting on it: keep working with your agent.

### My agent says git is still installing

That's fine. Your agent checks again at the start of every session and sets up version control on its own once git appears. If a day has passed and it still isn't there, ask your agent to check what happened. See [Installing Git](Installing%20Git.md).

## GitHub Issues (only if you use GitHub)

A house doesn't need GitHub. These only come up if you've chosen to use it.

### I get a 404 when visiting a GitHub repository

This usually means one of three things:
1. You haven't created a GitHub account yet
2. You aren't logged in to GitHub
3. The repository is private and you haven't been given access

If someone shared a repo link with you and you're getting a 404, make sure you're logged in and check your GitHub notifications for an invitation. GitHub shows a misleading 404 instead of telling you to log in or accept an invite.

### Git asks for my password and rejects it

GitHub no longer accepts regular passwords for git operations. Ask your agent to help you connect to GitHub; [GitHub Account Setup](GitHub%20Account%20Setup.md) has the background.

## Git and Sync Issues

### "Merge conflict" when pushing

This only happens with a remote, when two people edited the same part of the same file. Describe the situation to your agent and it can help you resolve it. This is rare in solo work.

### "Push rejected"

Only happens with a remote: someone else pushed changes while you were working. Ask your agent:

> Pull the latest, then push my changes

### "Nothing to commit"

You haven't made any changes since your last commit. This is fine — not an error.

### Files I don't want are being tracked by Git

Ask your agent to update your `.gitignore` file:

> Add [filename or pattern] to .gitignore

Common things to exclude: `.DS_Store` (Mac), `Thumbs.db` (Windows), and any files with passwords or API keys.

## General Tips

- **When in doubt, describe the problem to your agent.** It can read error messages and usually knows what to do.
- **Restart and retry.** Many first-day issues resolve by quitting and reopening the Desktop app. (Quitting turns Remote Control off; turn it back on afterwards if you use your phone.)
- **Git rarely loses anything.** Even if things look wrong, your history is intact. Ask your agent to help you recover.
