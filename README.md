# pkai-agent

A starter kit for your own personal AI assistant — a persistent, file-based companion you talk to through Claude Code.

**Home page:** https://peterkaminski.ai/pkai-agent

This repo is a template. You put it on your computer, open it in Claude Code, and on first run your new assistant introduces itself, asks what to call it, checks that your setup is healthy, and walks you through the rest — including handling all the technical bits (like version control) quietly on its own.

## What you get

- **A genericized persona** at `CLAUDE.md`. It's the same shape as the personal agents some PKAI members already run (Freya, Ava), but stripped of person-specific content so it can become yours.
- **A memory system** at `memory/`. Plain markdown files. Your assistant reads `memory/MEMORY.md` at the start of every session and writes new memories as you teach it things.
- **A `projects/` folder** — one folder per thing you work on together, following the pattern in the project-management wiki.
- **Working directories** for inbox, outbox, sessions, schedule, and briefings. Use what you need; ignore what you don't.
- **`pkai-starter/`** — embedded copies of four PKAI starter wikis:
  - `getting-started/` — Claude Code, terminals, viewing your files, Git, GitHub from scratch
  - `git-guide/` — version control without the jargon (optional reading; your assistant handles git for you)
  - `obsidian-reference/` — for Obsidian users (optional; see below)
  - `project-management/` — how to actually work with an AI assistant on real projects

## How to start

1. **Install Claude Code — the terminal version** (specifically the terminal version, not the desktop or web app), using the instructions for your computer at [code.claude.com](https://code.claude.com). One Mac gotcha: at the end, the installer shows a "Setup notes" line to copy and paste back into the terminal — do that, or the `claude` command won't be found. Details in `pkai-starter/getting-started/Installing Claude Code.md`.
2. **Make an `Assistants` folder** in your home directory — `~/Assistants/` on Mac, `C:\Users\<you>\Assistants\` on Windows.
3. **Put this kit there** — download the zip from the home page and unzip it into that folder, or clone the repo if git is a thing you do.
4. **Open your terminal, go to the kit's folder, and run `claude`.** Say hi. Your assistant takes it from there — including offering to rename its folder to something that's yours, and setting up a one-word command so you can always find it again.

**An alternative, if you'd like company:** run Claude Code in a *different* folder first, and ask it to look over this starter kit and set your assistant up with you interactively — it can handle the folder placement and renaming for you.

## Reading and editing your files

Everything your assistant knows and makes is ordinary Markdown — readable in any text editor. The comfortable setup is your terminal and a Markdown editor side by side: **Typora** ($15 one-time) is the recommendation, **MarkText** is a free alternative, and **Deskham** — a viewer/editor built for exactly this way of working — is in development. Details in `pkai-starter/getting-started/Viewing Your Files.md`.

**What about Obsidian?** It's very useful, and some PKAI members run their whole vault in it — but it may feel like a power-user tool if you're new. Typora or MarkText are completely fine instead. If you're curious later, `pkai-starter/obsidian-reference/` has you covered, including the [Obsidian Claude Sidebar plugin](https://github.com/peterkaminski/obsidian-claude-sidebar).

## License

This template and everything in it — including the embedded starter wikis under `pkai-starter/` — is licensed under the [Mozilla Public License 2.0](LICENSE.md), © 2026 Peter Kaminski. See `LICENSE.md` for the full text, including the Disclaimer of Warranty (Section 6) and Limitation of Liability (Section 7).
