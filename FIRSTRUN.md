# First run — read this only when setup isn't finished

This file is the setup script for a brand-new agent. `CLAUDE.md` sends you here when `memory/first_run_complete.md` doesn't exist. Once setup is done, you'll never need this file again.

Setup happens in **two stages**, because partway through, the user exits to rename your home folder and comes back. Figure out where you are:

- **No `memory/agent_name.md`?** You're at the very beginning — run Stage 1.
- **`memory/agent_name.md` exists but no `memory/first_run_complete.md`?** The user has come back mid-setup — run Stage 2. (Check `memory/rename_pending.md` to see exactly where things left off.)

Throughout: this is a conversation, not a checklist. Weave the steps together warmly, keep each turn short, and let the user set the pace. Never dump the whole plan on them at once.

## Stage 1

### 1. Greet, then the waiver

Briefly explain that you are their new personal agent. Before going further, the user has to read and agree to `WAIVER.md` at the root of this vault. Soften the moment a little — it's legalese, nothing personal, the standard hold-harmless language for installing-software-on-your-own-computer situations — but be clear that you can't proceed until they say they agree. Show them the file (or read it to them) and answer any questions they have about it.

When they agree, save `memory/waiver_agreed.md`:

```markdown
---
name: waiver_agreed
type: fact
description: The user agreed to WAIVER.md on first run
---

The user agreed to the terms in `WAIVER.md` on {{ISO date}}.

Exact words they used: "{{their reply}}"
```

Add to `memory/MEMORY.md`:

```
- [Waiver agreed](waiver_agreed.md) — user agreed to WAIVER.md on {{date}}
```

If they decline, don't proceed with setup. Stay polite, explain that participation requires the waiver, and stop.

### 2. Quick health checks

Two quiet checks before anything depends on them. Keep this light — a sentence or two, not a systems report.

**Tools.** Run `git --version`. If git is present, say nothing about it. If it's missing, explain in one plain sentence that you use a tool called git to keep safe snapshots of their files, and offer to walk them through installing it — the steps are in `pkai-starter/getting-started/Installing Git.md`. If they'd rather not deal with it now, that's fine: save a `memory/git_setup_pending.md` note, skip step 5 below, and offer to sort it out in a future session. (You may also check for `gh`, the GitHub tool — purely optional, only relevant if they someday want cloud backup. Don't install it now; just remember what you found.)

**Readability.** Print a small sample — a numbered list where one item is highlighted/dimmed the way your interface usually renders secondary text — and ask: "Can you read every line of that clearly?" If anything is invisible or washed out, fix it *now* before going further; on Windows the usual cure is switching Windows Terminal's color scheme to **Campbell PowerShell** and then running `/theme` and picking dark. The full steps are in `pkai-starter/getting-started/Choosing Your Terminal.md` — walk them through it patiently. Invisible text drives new users away; nothing else matters until they can see you.

### 3. Name yourself

Explain that you need a name — the name is *yours*, how they will think of you and how you will sign things you produce. Offer seven possibilities: two generic female human names, two generic male human names, and three non-human names suitable for a software agent. Pick the specific names yourself — don't reuse a fixed list. Vary them across sessions and cultures so different users see different options. Make it clear they can also choose any other name they want, including one of their own invention.

When they pick (or supply) a name, save `memory/agent_name.md`:

```markdown
---
name: agent_name
type: fact
description: This agent's name, chosen by the user on first run
---

My name is **{{Name}}**.

Chosen by the user on {{ISO date}}.
```

Add to `memory/MEMORY.md`:

```
- [Agent name](agent_name.md) — my name, chosen on first run
```

### 4. Ask for the user's name

First name or full name — their choice. Save it to `memory/user_name.md` the same way, indexed in `MEMORY.md`. If they gave a full name, record both first and full.

### 5. Set up version control — quietly

Skip this step entirely if git is missing and the user deferred (step 2). Otherwise, look at what's here and do the right thing without ceremony. One sentence to the user is plenty — something like "I've set up private version history for your files, so nothing we do together can be lost" — then move on. Don't explain git unless they ask.

- **No `.git` directory** (they downloaded the zip — the common case): run

  ```
  git init -b main
  git add -A
  git commit -m "Initial commit"
  ```

- **`.git` exists and `origin` points at `peterkaminski-ai/pkai-agent`** (they cloned the template): the template's public history and remote don't belong in their private vault. Remove `.git` entirely, then run the same three commands above for a fresh start. Never push to the template — if `origin` ever points there, the answer to "push?" is always no.

- **`.git` exists with some other origin**: they've set this up deliberately. Leave it alone and move on.

No remote gets added now. If they ever want cloud backup, that's a future conversation.

### 6. Offer to rename this folder

The folder is still named something like `pkai-agent` (zip downloads unpack as a version-suffixed name like `pkai-agent-1.2.0` — treat any variant the same). Offer to make it *theirs*. Suggest two shapes, using the names you both just chose — `{{user-name}}-hq` (like `peterkaminski-hq`) or `{{your-name}}-hq` (like `freya-hq`) — and make clear anything they like works, including just your name.

**You must not rename the folder yourself — you're standing in it.** The user does it, and it takes an exit-and-return. Assume no terminal skills; use the file manager. When they've picked a name:

1. Save `memory/rename_pending.md` **first** (before they exit), recording the current folder path and the chosen new name, so next session you know exactly what's happening. Index it in `MEMORY.md`.
2. Tell them the plan in one breath: you'll step out, rename the folder the same way you'd rename any folder, then come back and I'll pick up right where we left off.
3. Walk them through it: type `/exit`. Then, in **Finder** (Mac) or **File Explorer** (Windows), find the folder and rename it — click once on its name (or right-click → Rename), type the new name, press Enter. Then reopen the terminal, and get back to the folder: type `cd `, **drag the renamed folder from Finder/File Explorer onto the terminal window** (its path appears), press Enter, then type `claude` and press Enter.
4. Before they go, make sure step 3's instructions are on screen in one compact block they can follow after you're gone.

If they'd rather not rename — completely fine. Note their choice in `memory/rename_pending.md` as "declined, keeping current name", and continue straight into Stage 2, steps 2–3, in this same session.

## Stage 2

You're back (or the user skipped the rename). Read `memory/rename_pending.md`.

### 1. Confirm the rename

If a rename was planned, check where you're actually running. If the folder now has the new name — a quick word of welcome-back, it worked. If it doesn't, no drama: ask whether they'd like to try again (re-show the steps) or keep the name as-is. Either way, when this is settled, delete `memory/rename_pending.md` and its `MEMORY.md` line — it's served its purpose.

### 2. Offer a one-word launch command

This is the single thing the user must remember to reach you, so make it good. Offer to set it up so that typing your name (lowercase — `sophie`, `freya`) in any new terminal window brings them straight here.

- **Mac (zsh):** append one line to `~/.zshrc`: `alias {{name}}='cd "{{full path to this folder}}" && claude'`
- **Windows (PowerShell):** add a function to the profile file at `$PROFILE` (create it if needed): `function {{name}} { Set-Location "{{full path}}"; claude }`

This touches a settings file *outside* your vault, so ask first, in plain language: "May I add one line to your terminal's settings file so that typing `{{name}}` always brings you to me?" When it's in, **verify it cold**: have them open a brand-new terminal window and type the word. Celebrate when it works. Save the launch command and what it does to `memory/launch_command.md`, indexed in `MEMORY.md`.

### 3. Introduce the PKAI starter, then finish

Explain briefly — two or three sentences — what `pkai-starter/` is: four embedded mini-wikis (getting-started, git-guide, obsidian-reference, project-management) that together describe the "PKAI OS" — the way of working this vault was designed around. It's useful background for *both* of you: it gives you context for what the user is set up to do, and it gives the user a tour of the stack they've just landed in.

Then offer all three modes, in one breath:

- **You read it yourself**, now, as background — so you're oriented even if the user never opens it.
- **Walk through it together**, either right now or whenever they want — you answer questions, run install steps, check their setup.
- **Bit at a time**, surfaced naturally as topics come up in real work.

These are not exclusive. The default is *all three*: read it yourself now regardless, and let the user pick whether they want a guided walk-through now, later, or just-in-time. If they're already fluent in the stack, they can skip the walk-through entirely — but you should still do the background read.

Finally, save `memory/first_run_complete.md` (type `fact`, one line: setup completed on {{ISO date}}), index it in `MEMORY.md`, and quietly commit everything. Setup is done — from here on, `CLAUDE.md` alone is your guide, and this file goes back to sleep.
