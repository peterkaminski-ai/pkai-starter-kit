# Why This Stack

You're about to set up a small system of tools that work together. Here's what each one does and why they fit together.

## Claude Code — Your AI Agent

Claude Code is an AI tool made by Anthropic. It runs in a terminal — a plain text-based window where you type to it and it types back — and it reads and writes ordinary files on your computer directly. This kit turns it into a persistent personal agent: a name, a memory that carries across sessions, and a home folder where it keeps its notes about you and your work.

The terminal is where you talk to it. That's the whole interface — no app to open, no sidebar to configure. You type what you want, in plain English, and your agent does it.

## Markdown Files — Where Everything Lives

Everything your agent works with — its own memory, your notes, your projects — is stored as plain text files (Markdown) on your own hard drive. Unlike Google Docs or Notion, none of it is locked in someone else's cloud. You can open these files with any text editor, move them anywhere, back them up however you like, and they'll still be perfectly readable in twenty years — Markdown is just text with a few simple conventions (`#` for a heading, `**bold**` for bold), not a proprietary format.

## A Markdown Editor — Where You Read and Write Comfortably

You can read Markdown files in any text editor, but a dedicated Markdown editor makes them pleasant to work in: headers look like headers, bold looks bold, lists look like lists, with no raw `##` or `**` cluttering the screen.

[Typora](https://typora.io/) (recommended, a one-time $15 purchase), [MarkText](https://www.marktext.app/) (free), or [MeetingWords](https://meetingwords.com/) all do this well, shown side by side with your terminal — terminal for talking to your agent, editor for looking at what it wrote. And if you already use Obsidian or VS Code, they're fine too — keep them.

> [!tip]
> See [Viewing Your Files](Viewing%20Your%20Files.md) for the full comparison and setup details.

## Git and GitHub — The Quiet Safety Layer

Git is a version-control tool used by software teams worldwide. It keeps a complete history of every change you make — like an infinite undo button that remembers every version of every file. GitHub is a website that stores a copy of your files in the cloud, so they're backed up and, if you choose, visible to collaborators.

Here's the part that's different in this kit: **your agent handles git for you, silently.** You don't memorize commands, and you don't get asked about commits — your agent just keeps a careful history running in the background as you work with it. If you're curious how that works under the hood, or want to add GitHub for cloud backup, that's covered in the optional sections later in this book — but nothing about getting started requires it.

> [!tip]
> This is still more deliberate than auto-save-to-cloud. Your agent is checkpointing meaningful units of work into a real history, not silently overwriting the only copy of a file the moment you type.

## Why This Combination

Put together, this is a system where you own your files outright, your agent works directly on them at your direction, and every change is automatically checkpointed into a recoverable history. The result is private (nothing leaves your computer unless you choose), durable (plain text you can still read in twenty years), auditable (every change is a readable record, not a black box), and it gets more useful the longer you use it — because your agent's memory and your own body of notes both keep growing.
