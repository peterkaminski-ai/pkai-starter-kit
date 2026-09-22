# Your GitHub Account

GitHub is where the shared version of your project lives. You need a free account to access it.

## Creating your account

1. Go to [https://github.com/](https://github.com/) and click **Sign up**.
2. Follow the prompts to choose a username, enter your email, and set a password.
3. Verify your email address when GitHub sends you a confirmation.

That's it. The free tier is all you need.

## Getting access to a shared project

When someone invites you to collaborate on a project (called a "repository" on GitHub), you'll receive an invitation. Look for it in your **GitHub notifications** -- click your profile icon in the upper right corner of github.com, then look for the inbox icon (it may have a blue dot).

A common gotcha: if you visit the project URL and see a **404 error** (page not found), it almost certainly means you haven't accepted the invitation yet. GitHub shows a misleading 404 instead of telling you to accept the invite. Check your notifications.

## Authentication: how your computer talks to GitHub

When you push or pull for the first time, Git needs to prove to GitHub that you're you. There are a few ways this can happen:

**The easy path (HTTPS with credential helper):** The first time you push or pull, Git will ask for your GitHub username and password (or a personal access token). Your operating system's credential manager will usually save this so you don't have to enter it again. If Claude Code prompts you to authenticate, follow the instructions it gives you.

**SSH keys:** A more technical option that some people prefer. If you've never heard of SSH keys, don't worry about it -- the HTTPS approach works fine. If Claude Code suggests setting up SSH, you can let it walk you through the process, or just stick with HTTPS.

**The `gh` CLI:** GitHub has a command-line tool called `gh` that can handle authentication smoothly. Claude Code can install it for you and use it to log you in with a browser-based flow. If Claude Code suggests this, it's a good option.

## If authentication goes wrong

Authentication issues are the most common stumbling block in Git setup. Here are the most common fixes:

- **"remote: Repository not found"** -- You either don't have access (check your GitHub notifications for an invitation) or you're logged in as the wrong GitHub user.
- **"Authentication failed"** -- Your saved credentials may be stale. Ask Claude Code: "Help me re-authenticate with GitHub."
- **Two-factor authentication (2FA)** -- If you've enabled 2FA on your GitHub account, you may need to use a personal access token instead of your password. Ask Claude Code to help you generate one.

Don't let authentication issues derail you. If something isn't working, describe the error to Claude Code or ask a person for help. These problems are always solvable.

## Next

[The Daily Cycle](The%20Daily%20Cycle.md) -- the rhythm of working with Git day to day.
