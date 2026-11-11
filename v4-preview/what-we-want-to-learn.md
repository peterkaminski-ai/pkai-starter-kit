# What we want to learn from v4 test runs

*Version 1.1 · 2026-11-10 · for v4.0 release candidates*

v4 is written for the Desktop app's Code tab, and some of its instructions name buttons and settings we haven't seen on every system yet. Each question below is something a real setup can answer. If you try v4, any of these is worth noting: what you saw, what it was called, and where it was.

Send us what you find any way that suits you: [open an issue](https://github.com/peterkaminski-ai/pkai-starter-kit/issues), open a pull request, or email Pete at kaminski@istori.com or Freya, his agent, at freya@istori.com. A sentence is plenty; a screenshot or a screen recording is a bonus.

## Still open

_Many of these questions need multiple answers from testers in different contexts; please contribute_ your _answers even if a question already appears to have answers._

### Windows
- What do you see while the agent installs git with **winget**, and what happens if winget is missing?
- Does an Intel or AMD (x86-64) Windows machine behave the same as the ARM64 one we tested?
- What are the Windows labels for the app's version and update check?
- If your Documents folder is backed up to **OneDrive** (often on by default), does the agent notice and put your HQ somewhere else?

### The house after setup
- Does the agent's own memory stay the only memory, with Claude Code's built-in auto memory off?
- After installing git on Windows, is restarting the app enough, or does it take restarting the computer?

### The Desktop app
- **The file pane:** what is it called, how do you open it, can you edit in it, and where is "Show in Finder" (or Explorer)?
- **Modes:** what are the modes called in the picker, does Shift+Tab cycle them, and what do the buttons on a permission prompt say?
- **Sandbox:** does the Mac sandbox apply to Code-tab commands? Is there still none on Windows?
- **Output styles:** do `/output-style` and `/config` work in the Code tab?
- **Linux:** is the Code tab available at all?

### Phone and everyday settings
- **Remote Control:** what is the toggle called, where is it, and is there a setting to turn it on for every session?
- **On the phone:** what does a Remote Control session look like, and can you start a new session on your computer from your phone?
- **Keep Computer Awake** and **Notifications:** what are they called, and where are they?
- How long are session logs kept by default?

## Answered so far

From [run 1](runs/run-1-2026-11-10-mac.md), on a Mac:

- **App version:** Claude menu → About Claude shows it; Claude menu → Check for Updates checks it. (We still want to name a minimum version.)
- **Folder trust:** the prompt shows the folder and "Execution allowed by .claude/settings.json", with a **Trust workspace** button. It appears again for the agent's own folder.
- **Git on a Mac:** a Code-tab session can start Apple's developer-tools install, and Apple's window does appear, but it can open *behind* other windows. Clicking the blue installer icon in the Dock brings it forward. The install took about three minutes, though its time estimate jumped around.
- **After git arrives:** the agent sets up version history in both folders and makes a first save, using a placeholder name and email if you like.
- **Making the agent's environment:** New → Choose Environment → + New Environment → Local, then name it, use only the agent's folder, and Create environment. The form may open already filled in with the setup session's temporary environment. That's expected; rename it.
- **Permission mode:** a new house starts in **Auto** mode; the app says so in a banner.

From [run 2](runs/run-2-2026-11-10-windows.md), on Windows 11 (ARM64):

- **Git for Windows** wasn't needed before a session could start, and **winget** was present.
- **The clock and desk helpers** ran under Git Bash after an app restart, and a second session came up as a guest.
- **The sidebar:** archiving the last session in a folder makes that folder's section go away.
