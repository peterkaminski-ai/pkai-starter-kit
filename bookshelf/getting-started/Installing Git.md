# Installing Git

Git is the version-control system that keeps a history of every change in your house, so nothing is ever lost. Every house uses it, and **your agent installs it for you.** You don't need to do anything except answer one dialog on a Mac, and wait.

## What happens during setup

Setup builds your house without git and doesn't wait for it. Along the way, your agent checks whether git is on your computer. If it isn't, your agent starts the install and carries on building. It notes in its memory that git is installing, and every time a session starts it checks again. When git shows up, your agent turns on version control for both of your folders and makes their first commits, without being asked.

So if setup tells you git is installing, that's fine. Keep going. Nothing is blocked.

## On a Mac

On a Mac, git comes with Apple's **Command Line Tools**. When your agent starts the install, a dialog from Apple appears asking whether to install the command line developer tools.
<!-- VERIFY(cold-start): whether a Code-tab session can start `xcode-select --install` and make Apple's dialog appear -->

> [!warning]
> This dialog often appears **behind** other windows and is easy to miss. If nothing seems to happen, look behind your open windows or on your other displays.

Click **Install**, then **Agree** to the license. The download starts.

> [!tip]
> The time estimate is wildly off at first; it may say 16 hours. It can take minutes, or an hour or more, and the progress bar may restart partway through. That's normal. You can keep working with your agent while it runs, and you can let it finish after setup is over.

If your Mac already has the tools, your agent sees that and nothing appears at all.

## On Windows

On Windows, your agent installs **Git for Windows** using Windows' own installer tool. You may see an installer window or a prompt asking for permission to make changes; say yes. When it's done, your agent checks for git again.
<!-- VERIFY(cold-start): whether winget is present on a fresh Windows 11, and what the person sees while `winget install --id Git.Git -e` runs -->

Git for Windows also brings along a program called Git Bash. You won't use it yourself, but your house's hooks (small checks your agent runs automatically) use it behind the scenes, so leave it installed.

## You don't need to do anything else

No commands to type, no settings to change, no account to make. Once git is in place, your agent commits your work at natural points and you can ask it things like "what's changed?" in plain English. See [Your First Commit](Your%20First%20Commit.md) when you're curious.

If git still hasn't appeared a day later, tell your agent; it can check what happened and start the install again.

## Next Step

Back to the [Getting Started](README.md) index.
