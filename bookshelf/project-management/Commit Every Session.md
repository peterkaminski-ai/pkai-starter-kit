# Commit Every Session

Commit early, commit often, push at least once a session.

## The rules of thumb

1. **Commit at every meaningful increment.** Not "every save" — every logical chunk of work that you'd want to be able to roll back to.
2. **Commit before clearing the context window.** This is non-negotiable. If `/clear` happens with uncommitted work, you've made the next session's life harder.
3. **Push at least once per session.** Daily, minimum.
4. **Push more often when collaborating.** If anyone else might be working on the same repo, push as soon as you have something committed and want their changes integrated.

## Why commit and push are different

- **Commit** writes to your local Git repo. It's free, fast, and only affects you. You should do it constantly.
- **Push** sends your local commits to GitHub. It's also free, but it's how your work becomes visible to collaborators and how you back up to the cloud.

For solo work, the urgency on push is "before I close my laptop tonight." For collaborative work, it's "before someone else pulls."

## Why session logs and commits go together

Every session log should be a commit. The standard close-of-session move:

1. Write the session log (see [Session Logs](Session%20Logs.md)).
2. Commit the session log along with whatever else changed in the session.
3. Push if appropriate.
4. `/clear`.

This means git history reads as a sequence of session-shaped chunks. Each commit message can reference the session log: "session 2026-05-06-002: refactor auth flow." When you `git log` later, you can see the project's progression at the resolution of sessions, not arbitrary save-points.

## Have Claude Code drive Git

Even if you know Git well, this is a place where Claude Code earns its keep. The phrasebook:

- "Commit and push everything" — full sweep.
- "Commit everything that's been edited" — explicit about scope when Claude has only touched some files but you've touched others.
- "What's changed?" — `git status` plus a summary.
- "What's the commit history look like?" — `git log` with context.
- "Pull the latest" — `git pull --rebase`.
- "Push when ready" — push without prompting.
- "Make a small commit with [these changes]" — scoped commit when you don't want everything bundled.

A subtle gotcha Pete pointed out: **Claude Code tends to only commit files it edited.** If you edited files manually (in a text editor or another tool), you have to tell Claude Code explicitly:

> Commit everything that's untracked, including changes I made by hand.

Otherwise your manual edits get left out of the commit.

## Multi-user repo hygiene

If others are working on the same repo:

- **`git status` before pulling.** See if you have uncommitted work that needs to be stashed or committed first.
- **Pull before pushing.** Use `git pull --rebase` to integrate others' changes cleanly. If push is rejected, pull and retry.
- **Stash if needed.** Uncommitted work + need to pull = `git stash`, pull, `git stash pop`.
- **Commit before pulling.** Staged changes are cleaner to merge as commits than as stashed state.
- **Small frequent commits.** Logical units beat batched mega-commits. Easier to review, easier to revert.

These rules show up almost verbatim in Pete's PKAI Founders shared CLAUDE.md, because they're what keeps a multi-user repo from becoming a mess.

## What about .gitignore?

The first time you `git init` a house or project, ask Claude Code to write a `.gitignore` for you:

> Initialize git here and create a .gitignore appropriate for a markdown project and Claude Code.

Claude Code will produce something that excludes:

- Editor-specific per-machine state (workspace files, local settings), if your editor leaves any.
- The local `.claude/` directory if it contains per-machine state.
- OS junk (`.DS_Store`, `Thumbs.db`).
- Build artifacts, if any.
- Common credentials and secrets patterns (`.env`, `*.pem`, etc.).

Review the generated `.gitignore`. If your project has its own thing-not-to-commit (large binaries, generated files, raw transcripts, anything sensitive), add it.

A specific lesson worth flagging: **don't commit raw call transcripts, chat logs, or other artifacts from a private conversation** if the project might ever be made public. Adding them later and deleting later doesn't help — Git history keeps them. Get them in `.gitignore` from the first commit.

## When to *not* push

- You're in the middle of an experiment that might not work.
- The repo is meant to be private, and you're sharing your screen.
- You're about to do `git rebase` or other history rewriting that you don't want others to pull.
- It's a "personal scratch" repo and pushing every five minutes feels noisy.

These are exceptions. The default is push.

## See also

- [Session Logs](Session%20Logs.md) — what gets committed at the end of each session.
- [Session Rhythm](Session%20Rhythm.md) — how the commit cadence relates to `/clear`.
- The [pkai-git-guide](https://github.com/peterkaminski-ai/pkai-git-guide) repo — Git for non-developers, if you want the full mental model.
