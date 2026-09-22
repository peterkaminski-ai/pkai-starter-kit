# Working With Others

Git is built for collaboration. This page covers the tools and workflows for working on a project with other people.

## The simplest model: shared main branch

For small teams working on a shared project, the simplest approach is for everyone to work on the main branch:

1. Pull the latest changes.
2. Do your work.
3. Commit and push.

This is the workflow described in [The Daily Cycle](The%20Daily%20Cycle.md). It works well when the team is small, people are working on different files most of the time, and you trust everyone's changes.

Everyone has direct push access. No review step. No ceremony. Just pull, work, push.

## Pull requests: when you want a review step

As projects grow, or when changes are significant, it's useful to have someone look at your work before it goes into the main version. That's what **pull requests** (often called "PRs") are for.

A pull request says: "I've made some changes on a branch. Here's what I did. Can someone review this before we merge it into main?"

### The pull request workflow

1. **Create a branch** for your work: "Create a branch called update-budget"
2. **Do your work** on that branch, committing as you go.
3. **Push the branch** to GitHub: "Push my branch to GitHub"
4. **Open a pull request**: "Create a pull request for my branch" -- Claude Code can create it for you, or you can do it on github.com.
5. **Someone reviews** your changes. They can leave comments, ask questions, or approve.
6. **Merge** the pull request once it's approved. This brings your changes into the main branch.

### What reviewers see

On GitHub, a pull request shows:
- A list of every file that changed
- A side-by-side comparison of the old version and new version (called a "diff")
- A space for discussion and comments
- An "approve" or "request changes" button

Reviewers don't need to be technical. If you can read the files being changed (and in most projects, we're talking about text documents), you can review a pull request.

### When to use pull requests

- When the project has a review process or standards to maintain
- When you're making a significant change and want a second opinion
- When you're new to a project and want someone to check your work
- When the change affects something other people depend on

### When you don't need pull requests

- When the team is small and everyone trusts each other's work
- For quick fixes, typos, or minor updates
- When speed matters more than review

There's no universal rule. Some teams use pull requests for everything; others rarely use them. Use whatever makes sense for your project.

## Seeing what others have done

Staying aware of what your teammates are working on helps avoid duplicated effort and conflicts:

- **"Pull and tell me what's new"** -- Claude Code will download recent changes and summarize what others have pushed.
- **"Show me the recent history"** -- lists recent commits from everyone.
- **"What changed in [filename] recently?"** -- shows the recent history of a specific file.

## Forking: contributing to someone else's project

If you want to contribute to a project you don't have write access to (common in open-source work), you use a **fork**:

1. **Fork** the project on GitHub -- this creates your own copy of the repository.
2. **Clone** your fork to your computer.
3. **Make your changes** and push them to your fork.
4. **Open a pull request** from your fork to the original project.

The project owner reviews your pull request and decides whether to accept it. This is how most open-source collaboration works.

You probably won't need to fork anything in this course, but it's good to know the concept.

## Good collaboration habits

- **Pull before you start working.** Always.
- **Push when you're done.** Don't leave uncommitted work sitting on your machine overnight.
- **Communicate about what you're working on.** If two people are editing the same file, a quick message ("I'm updating the budget doc") can prevent conflicts.
- **Write clear commit messages.** "Updated the project timeline with new deadlines" helps your teammates understand what changed without opening the file.
- **Don't worry about being perfect.** Everyone makes mistakes with Git. That's what the history is for.

## Next

[Git Glossary](Git%20Glossary.md) -- quick-reference definitions for Git terminology.
