# Choosing Your Terminal

The terminal is where you'll actually talk to Claude Code — it's the window where you type and where your assistant replies. You'll spend a lot of time looking at it, so it's worth two minutes now to make sure it's set up well.

The built-in terminal on your computer works, but on both Mac and Windows there's a better option, and on Windows there's a real gotcha to fix before you go further. Follow the section for your platform.

---

## Mac

The Mac comes with a Terminal app already installed, and it's fine to start with. But we recommend **iTerm2** instead — it's free, and a small upgrade in day-to-day comfort.

### Step 1: Download iTerm2

Go to [iterm2.com](https://iterm2.com/) and download the app. Unzip it and drag it into your Applications folder, the same way you'd install any Mac app.

### Step 2: Open it and use it

Open iTerm2 the way you'd open any app — Spotlight (Cmd+Space), type **iTerm**, press Enter.

> [!tip]
> The concrete win with iTerm2: selecting text with your mouse copies it automatically (no need to Cmd+C), and it gives you much more control over appearance — colors, transparency, font size — than the built-in Terminal app. Small thing, but you'll notice it every day.

### Step 3: Run terminal setup in Claude Code

Once Claude Code is installed and running (see [Installing Claude Code](Installing%20Claude%20Code.md)), run this once inside it:

```
/terminal-setup
```

This makes **Shift+Enter** insert a new line in your message instead of sending it — handy any time you want to write a multi-line message to your assistant.

---

## Windows

On Windows, use **PowerShell** running inside **Windows Terminal** — Microsoft's modern terminal app.

> [!warning]
> Don't use Command Prompt, and don't use Git Bash as your everyday terminal. Windows Terminal running PowerShell is what this kit assumes.

### Step 1: Get Windows Terminal

- **Windows 11:** Windows Terminal is already installed. Open the Start menu, type **Terminal**, and press Enter.
- **Windows 10:** Install it free from the Microsoft Store — open the Store, search **Windows Terminal**, and click Install.

### Step 2: Open PowerShell inside it

Windows Terminal opens with PowerShell as the default tab, so you're usually already there. If not, click the small down-arrow next to the `+` at the top of the window and choose **Windows PowerShell** from the list.

---

## The invisible-text problem (read this even if everything looks fine)

This is the single most common snag new users hit on Windows, so it gets its own section.

Windows Terminal's default color scheme (often called "Tango Light" or similar) is a **light background**. Claude Code prints some text in **light colors**, designed for a **dark background**. Put the two together and you get near-white text on a near-white background — text that's technically there but that you simply cannot see.

This shows up as things like a numbered list that appears to have gaps in it, or highlighted text that looks blank. It's not a bug in Claude Code, and it's not your imagination — it's a color scheme mismatch, and it's a two-minute fix.

### Fix it: switch to a dark color scheme

1. In Windows Terminal, click the **down-arrow to the right of the tabs** at the top of the window.
2. Choose **Settings**.
3. Click **Color schemes** in the sidebar — you'll see a paint-box grid of color scheme options.
4. Choose **Campbell PowerShell**.
5. Click **Save**.
6. Close the Settings tab by clicking its **X**.

### Then tell Claude Code to use dark mode too

Inside Claude Code, run:

```
/theme
```

and choose **dark**.

> [!warning]
> `/terminal-setup` does **not** fix this problem. That command handles the Shift+Enter behavior described above — it has nothing to do with color schemes. The invisible-text problem is entirely a terminal color scheme issue, and only changing the color scheme (the steps above) fixes it.

### Check yourself

Once you've made both changes, ask your assistant to print a numbered list with a few words in bold or highlighted. If every item is clearly visible and readable, you're set. If anything looks blank, missing, or washed-out, stop here and redo the color scheme steps above before going further — everything downstream in this kit assumes you can actually read what your assistant sends you.

---

## Next Step

Move on to [Viewing Your Files](Viewing%20Your%20Files.md) to set up a Markdown editor alongside your terminal.
