# System Requirements

Here's what you need before starting the setup process.

## Your Computer

**Mac** — macOS 10.15 (Catalina) or later. Most Macs from 2015 onward will work fine.

**Windows** — Windows 10 or later. You'll use PowerShell running in Windows Terminal — see [Choosing Your Terminal](Choosing%20Your%20Terminal.md).

> [!tip]
> Linux works too, but this guide focuses on Mac and Windows since those are what most people use.

## Accounts You'll Create

- **A Claude account** — sign up at [claude.ai](https://claude.ai/). Claude Code comes with the paid plans; current plans and pricing are on the site, and [Getting a Claude Account](Getting%20a%20Claude%20Account.md) has more detail.
- **GitHub** — optional, and not needed to get started. It's free, and it's where your files can be backed up to the cloud later if you want that; the optional Git and GitHub section of this wiki covers it.

## Software You'll Install

- **Claude Code** — free; install instructions at [code.claude.com](https://code.claude.com/)
- **Git** — free; Mac gets this through Xcode Command Line Tools, Windows through Git for Windows (your assistant will point you to [Installing Git](Installing%20Git.md) if your machine needs it)
- **A Markdown editor** — Typora ($15 one-time) or MarkText (free); see [Viewing Your Files](Viewing%20Your%20Files.md)

> [!tip]
> Obsidian is a free, optional power-user alternative to a simple Markdown editor — nothing in this kit requires it, and no account is needed to use it. See [Viewing Your Files](Viewing%20Your%20Files.md).

## Internet Connection

You need internet for setup, and whenever you're talking to your assistant — Claude Code works over the internet. Your files themselves live on your own computer, though: you can read and edit them offline with your Markdown editor any time.

## Time

Budget 30-60 minutes for the full setup. Mac users should allow extra time if git isn't installed yet — the Xcode Command Line Tools download can take 10-15 minutes on its own.

## Important: Cloud Sync Folders

Your assistant's folder must **not** be inside iCloud, OneDrive, Dropbox, or any other cloud-synced folder. Your assistant keeps its own version history with git, and having two sync systems watching the same folder causes conflicts and data loss.

The recommended location is an `Assistants` folder directly in your home folder:

- **Mac:** `~/Assistants/`
- **Windows:** `C:\Users\YourName\Assistants\`

> [!warning]
> On many Windows machines, OneDrive syncs your Documents folder by default — which is exactly why the recommendation is `C:\Users\YourName\Assistants\`, not somewhere under Documents.
