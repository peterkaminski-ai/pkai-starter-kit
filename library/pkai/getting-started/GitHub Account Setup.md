# GitHub Account Setup

GitHub is a website that can keep a copy of a git repository in the cloud, and it's where people collaborate on shared projects. **It's optional.** Your house doesn't use it: your agent home and HQ are two local repositories with no remote, and nothing is uploaded anywhere. You might want an account later, for a project with a repo of its own that you share or publish, or to look at someone else's repository. Until then, skip this page.

One rule holds whatever you decide: your agent home holds your agent's memory, so it is never pushed anywhere public or shared.

## Create Your Account

1. Go to [github.com](https://github.com/)
2. Click **Sign up**
3. Follow the prompts to create a free account

You don't need to complete any of the onboarding questions (role, what you're using it for, etc.) — just having the account is enough.

> [!tip]
> Remember the email address you used for GitHub. Your agent will ask for it in the next step.

## Connect It, With Your Agent

You don't type any commands. When you want to connect your account, ask your agent in the Code tab:

> I've made a GitHub account with the email you@example.com. Help me connect it, so we can use it for a project later.

Your agent will:

1. **Tell git who you are**, so your commits carry your name and email. Use the same email you used for GitHub. (Your agent may already have done this when it set up git.)
2. **Connect to GitHub.** GitHub doesn't accept your regular password for git. Your agent will usually suggest signing in through your web browser using GitHub's own tool, which it can install for you with your yes. The other way is a personal access token, which you make on GitHub's website and paste in when asked. Your agent can walk you through either.
3. **Check the connection** and tell you your GitHub username.

Each of these touches settings outside your house, so your agent asks before it acts. Read the prompts; see [Permissions Questions](Permissions%20Questions.md).

> [!warning]
> A personal access token is a password. Don't paste it into a chat, a note or a file in your house; paste it only where git or GitHub's own tool asks for it.

## Using It

Having an account doesn't change your house. Your agent creates a repository on GitHub, or pushes anything to one, only when you say so, every time. [Setting Up a Project](Setting%20Up%20a%20Project.md) covers the one common case: a project that gets a repo of its own.

## Next Step

Back to the [Getting Started](README.md) index.
