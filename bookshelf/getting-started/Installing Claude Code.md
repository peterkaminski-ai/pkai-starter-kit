# Installing Claude Code

Claude Code is the part of Claude that works with the files on your computer. This kit uses it through the **Claude desktop app**, in the app's **Code** tab. That's where your agent lives. You don't need a terminal.

## Step 1: Install the Claude desktop app

In a browser, go to [claude.ai/download](https://claude.ai/download) and download the app for your computer (Mac or Windows). Install it the way you'd install any app: on a Mac, drag it into Applications; on Windows, run the installer.

If the app is already installed, update it to the latest version before you go on. The kit expects a current app.
<!-- VERIFY(cold-start): where the app shows its version, and how to check for an update on Mac and Windows -->

## Step 2: Sign in

Open the app and sign in with your Claude account (see [Getting a Claude Account](Getting%20a%20Claude%20Account.md)). Use the same account you pay for your plan with.

If what you see looks a little different from this description, that's normal; the app changes from time to time. Follow along and take the defaults.

## Step 3: Find the Code tab

The app has more than one tab. The **Code** tab is small and easy to miss. Find it and click it.

The rest of the app (the chat) is the Claude chatbot. It's useful, but it isn't your agent and can't see your house. Your agent is always in the Code tab.

That's it — Claude Code is ready on your computer.

> [!tip]
> **Windows: a "module is blocked from loading into the Local Security Authority" dialog** may pop up the first time something on your computer reaches the internet, naming `mdnsNSP.dll` under `Program Files\Bonjour`. It's harmless: Windows 11 is refusing to load Apple's Bonjour networking add-on (installed with iTunes, some Adobe installers and some printer software) into its security system, and whatever was running keeps going. Tick **Don't show this message again** and click **Cancel**. Don't change LSA protection. If it keeps appearing and you don't use Apple devices, uninstalling **Bonjour** from Settings → Apps makes it go away.

## Other ways to run Claude Code

Claude Code also runs in a terminal and in VS Code. The kit doesn't teach either. If you already love the terminal, you can use it with your house; the install command is on [code.claude.com](https://code.claude.com/), and [Choosing Your Terminal](https://github.com/peterkaminski-ai/pkai-benchmark/blob/main/bookshelf/getting-started/Choosing%20Your%20Terminal.md) is in the PKAI benchmark for you. Everything else in this book assumes the desktop app.

## Next Step

Once your house is built, read [First Day in Desktop](First%20Day%20in%20Desktop.md). If you're still getting ready, move on to [Permissions Questions](Permissions%20Questions.md).
