# Commit Every Session

Commit early, commit often. Push only where you've set up a remote, and only when you say so.

## The rules of thumb

1. **Commit at every meaningful increment.** Not "every save" — every logical chunk of work that you'd want to be able to roll back to.
2. **Commit before clearing the context window.** This is non-negotiable. If `/clear` happens with uncommitted work, you've made the next session's life harder.
3. **Push only if you've set up a remote, and only with your yes.** A house built from the kit has no remotes: setup makes two local repos, one for the agent home and one for the HQ, and your commits are your safety net right there on your machine. If you add a remote later — for a backup, or for a project you share — your agent asks before it pushes.
4. **Sync more often when collaborating.** If you share a repo with a remote and anyone else might be working on it, push (with your yes) as soon as you have something committed and want them to see it.

## Why commit and push are different

- **Commit** writes to your local Git repo. It's free, fast, and only affects you. You should do it constantly.
- **Push** sends your local commits to a remote, such as GitHub. It's how your work becomes visible to collaborators, and one way to keep a copy off your machine. It's also a moment when something leaves your house, which is why your agent asks first.

With no remote, there's nothing to push, and that's fine. With one, for solo work the question is "do I want a copy off this machine tonight?" For collaborative work, it's "before someone else pulls."

## Why session logs and commits go together

Every session log should be a commit. The standard close-of-session move:

1. Write the session log (see [Session Logs](Session%20Logs.md)).
2. Commit the session log along with the rest of the session's own work. If you edited files by hand, have Claude Code show them to you and commit them separately, with your yes, before the session's own commit.
3. Push only if you have a remote and say so. The wrap-up skill never pushes on its own.
4. `/clear`.

This means git history reads as a sequence of session-shaped chunks. Each commit message can reference the session log: "session 2026-05-06-002: refactor auth flow." When you `git log` later, you can see the project's progression at the resolution of sessions, not arbitrary save-points.

## Have Claude Code drive Git

Even if you know Git well, this is a place where Claude Code earns its keep. The phrasebook:

- "Commit everything" — full sweep.
- "Commit everything that's been edited" — explicit about scope when Claude has only touched some files but you've touched others.
- "What's changed?" — `git status` plus a summary.
- "What's the commit history look like?" — `git log` with context.
- "Pull the latest" — `git pull --rebase`, if you have a remote someone else pushes to.
- "Push now" — your yes to push, if you have a remote.
- "Make a small commit with [these changes]" — scoped commit when you don't want everything bundled.

A subtle gotcha Pete pointed out: **Claude Code tends to only commit files it edited.** If you edited files manually (in a text editor or another tool), tell Claude Code, so your edits don't get left out:

> Show me what I changed by hand, and commit it separately before you commit your own work.

Committing your hand edits under the agent's message would credit the agent with changes it didn't make, and could carry in a file you never meant to keep, such as a pasted secret. Seeing them first, and committing them on their own, avoids both.

## Multi-user repo hygiene

If others are working on the same repo (which means it has a remote):

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

Even with a remote, hold off when:

- You're in the middle of an experiment that might not work.
- The repo is meant to be private, and you're sharing your screen.
- You're about to do `git rebase` or other history rewriting that you don't want others to pull.
- It's a "personal scratch" repo and pushing every five minutes feels noisy.

And the default is the same: in a kit house, nothing is pushed anywhere unless you've set up a remote and said yes.

## See also

- [Session Logs](Session%20Logs.md) — what gets committed at the end of each session.
- [Session Rhythm](Session%20Rhythm.md) — how the commit cadence relates to `/clear`.
- The [Git guide](../git-guide/README.md) on this shelf — Git for non-developers, if you want the full mental model.
