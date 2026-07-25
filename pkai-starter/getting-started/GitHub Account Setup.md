# GitHub Account Setup

GitHub is where your files get backed up in the cloud and where you collaborate with others. You need a free account.

## Create Your Account

1. Go to [github.com](https://github.com/)
2. Click **Sign up**
3. Follow the prompts to create a free account

You don't need to complete any of the onboarding questions (role, what you're using it for, etc.) — just having the account is enough.

> [!tip]
> Remember the email address you used for GitHub. You'll need it in the next step.

## Tell Git Who You Are

Git needs to know your name and email so it can label your changes. Open your terminal — Terminal or iTerm2 on Mac, Windows Terminal (PowerShell) on Windows — and run these two commands, replacing the name and email with your own:

```
git config --global user.name "Your Name"
```

```
git config --global user.email "your-email@example.com"
```

Use the same email you used when you created your GitHub account.

## Connect to GitHub

There are two ways to authenticate with GitHub from your terminal. Choose the one that matches your setup.

### Option A: Using the GitHub CLI (recommended for Mac)

If you installed the GitHub CLI (`gh`) in the previous step, this is the easiest method.

Run:

```
gh auth login
```

It will ask you several questions. Choose these answers:

1. **Where do you use GitHub?** — GitHub.com
2. **Preferred protocol?** — HTTPS
3. **Authenticate Git with GitHub credentials?** — Yes
4. **How would you like to authenticate?** — Login with a web browser

It will show you a code. Press Enter, and your browser will open. Paste the code into the browser, sign in to GitHub, and you're connected.

### Option B: Using HTTPS (works on Mac and Windows)

If you don't have the GitHub CLI, Git will prompt you for credentials the first time you try to push or pull from GitHub. When it does:

1. Go to [github.com/settings/tokens](https://github.com/settings/tokens)
2. Click **Generate new token (classic)**
3. Give it a name like "My computer"
4. Set an expiration (90 days is fine to start)
5. Check the **repo** scope
6. Click **Generate token**
7. **Copy the token immediately** — you won't be able to see it again

When Git asks for your password, paste this token instead of your GitHub password. Your computer will remember it for future use.

> [!warning]
> GitHub no longer accepts regular passwords for Git operations. You need either the GitHub CLI method (Option A) or a personal access token (Option B).

## Verify the Connection

You can verify everything works after you clone your first repository (covered in [Your First Vault](Your%20First%20Vault.md)). If you want to test now, you can run:

```
gh auth status
```

(If you used the GitHub CLI method.) You should see your GitHub username and that you're logged in.

## Next Step

Move on to [Installing Claude Code](Installing%20Claude%20Code.md).
