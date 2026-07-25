# Installing Git

Git is the version-control system that tracks changes to your files and syncs them with GitHub. You need it installed on your computer before you can use Claude Code to manage your vaults.

The installation is different on Mac and Windows. Follow the section for your platform.

---

## Mac

On Mac, you install Git through Apple's Xcode Command Line Tools. This also installs other developer tools that Claude Code needs.

### Step 1: Open Terminal

Press **Cmd+Space** to open Spotlight, type **Terminal**, and press Enter. Terminal is a text-based interface that comes pre-installed on every Mac.

### Step 2: Install Xcode Command Line Tools

In Terminal, type this command and press Enter:

```
xcode-select --install
```

A dialogue box will appear asking you to install the command-line developer tools.

> [!warning]
> This dialogue often appears **behind** other windows and is easy to miss. If nothing seems to happen, check behind your open windows or look at your other displays.

Click **Install**, then **Agree** to the license agreement. The download will start.

> [!tip]
> The time estimate shown during download is wildly inaccurate at first — it may say 16 hours. The actual download typically takes 10-15 minutes. The progress bar may also restart about two-thirds of the way through. This is normal.

If you already have Xcode tools installed, you'll see a message saying so. That's fine — move on to the next step.

### Step 3: Verify Git is installed

After the Xcode tools finish installing, type this in Terminal and press Enter:

```
git --version
```

You should see a version number (like `git version 2.39.3`). If you do, Git is ready.

### Step 4 (Optional): Install Homebrew and the GitHub CLI

Homebrew is a tool that makes it easy to install other tools on Mac. The GitHub CLI (`gh`) makes connecting to GitHub smoother.

To install Homebrew, paste this into Terminal as one single line:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

It will ask for your Mac password — type it in (no characters will show as you type) and press Enter. Wait for it to finish.

Then install the GitHub CLI:

```
brew install gh
```

This is optional but recommended. It makes the GitHub authentication step (next page) simpler.

---

## Windows

On Windows, you install Git for Windows. Its installer also bundles Git Bash, but that's just along for the ride — Claude Code itself runs in **PowerShell inside Windows Terminal**, not Git Bash.

### Step 1: Download Git for Windows

Go to [git-scm.com](https://git-scm.com/) and click the download button.

### Step 2: Run the installer

Run the downloaded installer. **Accept the default options all the way through** — the defaults are fine.

### Step 3: Verify the installation

Open **Windows Terminal** (it comes pre-installed on modern Windows), make sure you're on a **PowerShell** tab, and type:

```
git --version
```

You should see a version number. If Git isn't found, the installer didn't work — try downloading and running it again.

> [!tip]
> Windows Terminal can host several kinds of tabs — PowerShell, Command Prompt, and the Git Bash that came along with the Git for Windows install. Use the **PowerShell** tab for everything in this guide, including running Claude Code.

---

## Next Step

Move on to [GitHub Account Setup](GitHub%20Account%20Setup.md) to create your GitHub account and connect it to Git.
