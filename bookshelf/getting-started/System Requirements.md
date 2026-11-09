# System Requirements

Here's what you need before starting the setup process.

## Your Computer

**Mac** or **Windows** — a computer that runs the current Claude desktop app. The download page at [claude.ai/download](https://claude.ai/download) lists the versions it supports.

> [!tip]
> Claude Code runs on Linux too, but the desktop app this kit uses is for Mac and Windows.
<!-- VERIFY(cold-start): whether the Claude desktop app's Code tab is available on Linux -->

## Accounts You'll Create

- **A Claude account** on a Pro or Max plan — sign up at [claude.ai](https://claude.ai/). [Getting a Claude Account](Getting%20a%20Claude%20Account.md) has more detail.
- **GitHub** — optional, and not needed at all to get started. See [GitHub Account Setup](GitHub%20Account%20Setup.md) if you ever want one.

## Software You'll Install

- **The Claude desktop app** — free; see [Installing Claude Code](Installing%20Claude%20Code.md).
- **Git** — free. You don't install it yourself: during setup your agent checks for it and, if it's missing, starts the install for you. On a Mac that means clicking **Install** in a dialog from Apple. See [Installing Git](Installing%20Git.md) for what you'll see.
- **A Markdown editor** — Typora ($15 one-time), MarkText (free), or [MeetingWords](https://meetingwords.com/); if you already use Obsidian or VS Code, they're fine too. See [Viewing Your Files](Viewing%20Your%20Files.md).

## Internet Connection

You need internet for setup, and whenever you're talking to your agent — Claude Code works over the internet. Your files themselves live on your own computer, though: you can read and edit them offline with your Markdown editor any time.

## Time

Setup takes about half an hour, longer if git has to install. You don't have to wait for git: setup carries on while it installs, and your agent picks it up when it's ready, even if that's a later session.

## Where your house goes

A house is two folders, side by side, never one inside the other:

- **Your agent home** — a folder named after your agent, with "(agent)" on the end, at the top of your home folder. For an agent named Lain:
  - **Mac:** `~/Lain (agent)/`
  - **Windows:** `C:\Users\YourName\Lain (agent)\`
- **Your HQ** — a folder named `yourname-hq`, also at the top of your home folder, right beside it:
  - **Mac:** `~/yourname-hq/`
  - **Windows:** `C:\Users\YourName\yourname-hq\`

If you later add a second agent, it gets its own folder beside the first, like `~/Wren (agent)/`, never a folder inside another agent's.

## Important: Cloud Sync Folders

Neither folder may be inside iCloud, OneDrive, Dropbox, or any other cloud-synced folder. Your agent keeps its own version history with git, and having two sync systems watching the same folder causes conflicts and data loss.

That's why both folders go at the top of your home folder, not in Documents or on the Desktop: iCloud's "Desktop & Documents" and OneDrive often sync those. Setup checks this for you.

> [!warning]
> On many Windows machines, OneDrive syncs your Documents folder by default — which is exactly why the HQ goes at `C:\Users\YourName\yourname-hq\`, not under Documents.
