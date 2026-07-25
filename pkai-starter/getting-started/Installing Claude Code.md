# Installing Claude Code

Claude Code is a command-line tool that runs in a terminal. It can read and write files on your computer, manage Git operations, and help you with all kinds of knowledge work. The terminal is the primary way you'll use it in this kit.

## Mac

### Step 1: Install Claude Code

In a browser, go to [code.claude.com](https://code.claude.com/) — it may redirect you somewhere; that's expected. You'll see several options — choose the **Terminal** version (not VS Code, not the Desktop app, not Web). Copy the install command shown on the page.

Go to Terminal (or iTerm2 if you use it). Paste the command and — before hitting Enter — check that it looks right. Then hit Enter. The download may take a minute or two.

> [!warning]
> **Don't skip this step.** After the install finishes, the installer prints a block starting with `⚠ Setup notes` telling you that `~/.local/bin` isn't in your PATH yet, followed by a command to copy. On a fresh Mac, that command typically looks like this:
> ```
> echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc
> ```
> Yours may differ slightly — always trust the exact line the installer shows you over this example. Copy that whole line and paste it into the **same** terminal window, then hit Enter. It will look like nothing happened — that's correct. You only need to do this once.
>
> If you skip this step, typing `claude` will say "command not found" — even if you close Terminal and open a brand-new window.

> [!tip]
> As a general rule, never paste commands from the internet into your terminal without verifying them. In this case, you're trusting Anthropic's official install page.

### Step 2: Run Claude Code for the First Time

Type `claude` and hit Enter. The first time you run it, it walks you through a short setup: you'll sign in with your Claude account in a browser tab (choose the subscription sign-in, not API billing), acknowledge a couple of notices, and land at a prompt where you can type.

If what you see looks a little different from this description or from any screenshots you've come across, that's normal — setup changes from time to time. Follow along and take the defaults; they're fine.

That's it — Claude Code is installed on your Mac.

---

## Windows

### Step 1: Install Claude Code

Open **Windows Terminal** running **PowerShell** (not Command Prompt). In a browser, go to [code.claude.com](https://code.claude.com/) — it may redirect you somewhere; that's expected. Choose the **Terminal** version (not VS Code, not the Desktop app, not Web). Copy the PowerShell install command shown on the page.

Paste it into your PowerShell window and hit Enter. The download may take a minute or two.

> [!tip]
> Windows may also show a setup note after the install finishes, similar to the Mac one above. If you see one, follow whatever it tells you to do.

> [!tip]
> As a general rule, never paste commands from the internet into your terminal without verifying them. In this case, you're trusting Anthropic's official install page.

### Step 2: Run Claude Code for the First Time

In your PowerShell window, type `claude` and hit Enter. The first time you run it, it walks you through a short setup: you'll sign in with your Claude account in a browser tab (choose the subscription sign-in, not API billing), acknowledge a couple of notices, and land at a prompt where you can type.

If what you see looks a little different from this description or from any screenshots you've come across, that's normal — setup changes from time to time. Follow along and take the defaults; they're fine.

That's it — Claude Code is installed on your Windows machine.

---

## Other Ways to Run Claude Code

This kit assumes you're using Claude Code in a terminal, but it also runs in a few other places, all optional:

- **VS Code** — via the official Claude Code extension
- **Obsidian** — via a sidebar plugin, for people who use Obsidian
- **Desktop app** — a standalone app

You can mix and match depending on where your focus is, but everything in this guide uses the terminal.

## Next Step

Move on to [Choosing Your Terminal](Choosing%20Your%20Terminal.md).
