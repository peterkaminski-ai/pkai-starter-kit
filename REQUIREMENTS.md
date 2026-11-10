# What you need

Requirements and strong recommendations, in plain terms. If the "basics" lists feel comfortable, you're ready; the setup conversation checks the rest with you.

## Computer basics

- A basic understanding of files and folders on your Windows or Mac computer: you can use File Explorer or Finder to move, copy, and delete files between folders, and you can download a zip file and find the files within it.
- You can copy and paste to and from the clipboard, between apps.

## Strongly recommended (please, really)

- **Backups.** Data on your computer is regularly backed up — in case of a lost or stolen computer, a virus, phishing, or an AI accident. And you have *tested restoring* from a backup: an untested backup is a hope, not a backup. (Mac: Time Machine plus any reputable cloud backup service. Windows: File History plus a cloud backup service.)
- **Secrets.** Passwords, keys, and other secret data live in a password manager or another purpose-built encryption tool — not in plain files, and never in the folders your agent works in.

## Claude account

A **Claude Pro, Max or Ultra** account from Anthropic. Claude Code — the tool your agent runs on — is included with each. One person, one account: the terms of service say so, and a shared account also means a shared view of everyone's sessions.

## The Claude Desktop app

The **Claude Desktop app**, for Mac or Windows, from claude.ai/download, kept up to date. Your agent lives in its **Code** tab. You don't need a terminal, and you don't install anything else by hand: setup checks the app's version with you, and your agent takes care of the rest.

## Version control (git): your agent installs it

Git keeps quiet, safe snapshots of everything you and your agent make, so nothing can ever be lost. Every house built from this kit uses it. You don't need to learn it, and you don't need to install it: if it isn't on your computer, your agent starts the install during setup (on a Mac you click **Install** in Apple's window) and sets everything up when it arrives.

**One rule: keep both of your house's folders out of cloud sync** — out of iCloud Drive (including iCloud's "Desktop & Documents"), OneDrive, Dropbox and Google Drive. Git and sync engines contend with each other and both lose. Your HQ goes in your Documents folder, unless Documents is synced to the cloud (iCloud's "Desktop & Documents" on a Mac, or OneDrive's folder backup on Windows, often on by default); then it goes at the top of your home folder instead. Your agent's own folder always goes at the top of your home folder. Setup checks all this for you, and your agent will speak up if sync gets turned on later.

## The two surfaces

You'll work with your agent through two surfaces: a **chat surface** (where you talk) and a **review surface** (where you read and edit the markdown documents you make together).

### Chat surfaces

- **The Code tab of the Claude Desktop app** — where you and your agent talk. Not the Chat tab: that's a chatbot, not your agent. (And a Claude app *Project* is a different thing from a project folder in your HQ.)
- **The Claude app on your phone**, through **Remote Control** — a toggle in the Desktop app that lets you continue the same session from your phone. If you'll reach your agent mostly from a phone, say so during setup: there's a chapter and a skill for that path (`bookshelf/your-house/The Phone Path.md`).
- *Other option:* skip Claude Code and use Claude Cowork. We think that's harder.

### Review surfaces

- **Typora** — https://typora.io — our current favorite. Start with its 15-day free trial; after that, a one-time purchase (about $15).
- **TextEdit** (Mac) or **Notepad** (Windows) — already on your computer, free. They show the Markdown as written rather than formatted, but they work, and they're a fine fallback after Typora's trial.
- **MeetingWords** — https://meetingwords.com — a shared pad made for people and agents working on the same document; also the surface for working with other houses. *(Disclosure: Pete Kaminski runs MeetingWords. Recommending it isn't intended as self-dealing; it's the current best understanding of what works. This kit uses the hosted service at meetingwords.com; self-hosting and an app version are planned for a later release.)*
- **If you already use Obsidian or VS Code**, they're fine — keep them. The kit no longer teaches Obsidian, which is not the same as forbidding it.

The full treatment is `bookshelf/getting-started/Viewing Your Files.md`.

## Where to get help

Free and paid **PKAI workshops** are the instruction channel beyond this kit — and the way to get set up with company rather than alone. Sign up for email updates at **https://peterkaminski.ai** to hear about workshops and new kit releases.
