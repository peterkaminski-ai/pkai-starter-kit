# What you need

Requirements and strong recommendations, in plain terms. If the "basics" lists feel comfortable, you're ready; the setup conversation checks the rest with you.

## Computer basics

- A basic understanding of files and folders on your Windows or Mac computer: you can use File Explorer or Finder to move, copy, and delete files between folders, and you can download a zip file and find the files within it.
- You can copy and paste to and from the clipboard, between apps.

## Strongly recommended (please, really)

- **Backups.** Data on your computer is regularly backed up — in case of a lost or stolen computer, a virus, phishing, or an AI accident. And you have *tested restoring* from a backup: an untested backup is a hope, not a backup. (Mac: Time Machine plus any reputable cloud backup service. Windows: File History plus a cloud backup service.)
- **Secrets.** Passwords, keys, and other secret data live in a password manager or another purpose-built encryption tool — not in plain files, and never in the folders your agent works in.

## Claude account

A **Claude Pro or Max** account from Anthropic. Claude Code — the tool your agent runs on — is included with both. One person, one account: the terms of service say so, and a shared account also means a shared view of everyone's sessions.

## Computer intermediate

- You can use a **terminal** — a simple, chat-like program on your computer. If you never have, that's genuinely fine: it's less scary than it looks, the getting-started book in this kit teaches it from zero, and the setup conversation checks your terminal is set up comfortably.

## Version control (git): optional, strongly recommended

Git keeps quiet, safe snapshots of everything you and your agent make, so nothing can ever be lost. You don't need to learn it — your agent handles it — you only need to say yes to it during setup.

**One rule if you use git: keep git-managed folders out of OneDrive** (or any cloud-sync folder — Dropbox, Google Drive, iCloud Drive). Git and sync engines contend with each other and both lose. On Windows, Documents is often OneDrive-synced — in that case your headquarters goes at the top of your home folder instead. Setup checks this for you.

## The two surfaces

You'll work with your agent through two surfaces: a **chat surface** (where you talk) and a **review surface** (where you read and edit the markdown documents you make together).

### Chat surfaces

- **A terminal** — the recommended path. Mac: Terminal.app works, and we strongly recommend upgrading to **iTerm2** (free and open source). Windows: **PowerShell** in **Windows Terminal**.
- **The Claude app on your phone**, through **Remote Control** (`/rc`) — the same session, continued from your phone. If you'll reach your agent mostly from a phone, say so during setup: there's a chapter and a skill for that path (`bookshelf/house-and-estate/The Phone Path.md`).
- *Other option, not recommended:* Claude Desktop (or Web/Mobile — all the same) natively. The problem is getting files in and out, via clunky git branches.
- *Other option:* skip Claude Code and use Claude Cowork. We think that's harder.

### Review surfaces

- **Typora** — https://typora.io — our current favorite. Inexpensive, one-time purchase.
- **MarkText** — https://marktext.me — free and open source, same live-preview style.
- **MeetingWords** — https://meetingwords.com — a shared pad made for people and agents working on the same document; also the surface for working with other houses. *(Disclosure: Pete Kaminski runs MeetingWords. Recommending it isn't intended as self-dealing; it's the best current understanding of what works. V3.0 uses the hosted service at meetingwords.com; self-hosting and an app version are coming in V3.1.)*
- **If you already use Obsidian or VS Code**, they're fine — keep them. The kit no longer teaches Obsidian, which is not the same as forbidding it.

The full treatment is `bookshelf/getting-started/Viewing Your Files.md`.

## Where to get help

Free and paid **PKAI workshops** are the instruction channel beyond this kit — and the way to get set up with company rather than alone. Sign up for email updates at **https://peterkaminski.ai** to hear about workshops and new kit releases.
