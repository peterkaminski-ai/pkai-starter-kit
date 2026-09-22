# Installing Git

Git needs to be installed on your computer before Claude Code can use it. The process is different on Mac and Windows, but both are straightforward.

## Mac

On a Mac, Git comes bundled with Apple's developer tools. You install them once and you're done.

### Step 1: Open Terminal

Press **Cmd+Space** to open Spotlight search. Type **Terminal** and hit Enter. A window with a text prompt will appear -- this is your terminal.

### Step 2: Install Xcode Command Line Tools

In the Terminal window, type (or copy-paste) the following and hit Enter:

```
xcode-select --install
```

A dialogue box will appear asking you to install the tools. This dialogue sometimes appears *behind* other windows, so if nothing seems to happen, check behind your open windows or look at your other displays.

Click **Install**, then **Agree** to the license agreement.

The download will start. The time estimate will be wildly inaccurate at first -- it may say 16 hours, but it typically takes 10-15 minutes. About two-thirds of the way through, the progress bar may restart. This is normal.

If you see a message saying the tools are already installed, you can skip to the verification step.

### Step 3: Verify

Once the install finishes, type this in Terminal and hit Enter:

```
git --version
```

You should see something like `git version 2.39.5`. The exact number doesn't matter -- if you see a version number, Git is installed.

## Windows

On Windows, Git isn't included with the operating system. You install it separately.

### Step 1: Download Git for Windows

Go to [https://git-scm.com/](https://git-scm.com/) and download the installer.

### Step 2: Run the installer

Run the downloaded file and accept the default options all the way through. The defaults are fine. The installer also bundles Git Bash along the way, but you won't need it for this guide -- Claude Code runs in **PowerShell inside Windows Terminal**.

### Step 3: Verify

Open **Windows Terminal**, on a **PowerShell** tab, and type:

```
git --version
```

You should see a version number. If Git isn't found, the installer didn't work -- try downloading and running it again.

**Important:** On Windows, run Claude Code from **PowerShell inside Windows Terminal**, not Git Bash or Command Prompt.

## Troubleshooting

**Mac: "xcode-select: error: command line tools are already installed"** -- Good news, you're already done. Proceed to the verification step.

**Mac: The dialogue box disappeared.** It's probably behind another window. Use Cmd+Tab to look for a "Software Update" or "Install" window.

**Windows: `git` is not recognized as an internal or external command.** Git for Windows isn't installed, or you need to open a new PowerShell tab so it picks up the updated PATH. Install it from [https://git-scm.com/](https://git-scm.com/) if you haven't already.

**Claude Code says it can't find Git.** On Mac, make sure the Xcode Command Line Tools finished installing. On Windows, make sure Git for Windows installed successfully and that you're running Claude Code from PowerShell in Windows Terminal.

## Next

[Your GitHub Account](Your%20GitHub%20Account.md) -- signing up and getting access.
