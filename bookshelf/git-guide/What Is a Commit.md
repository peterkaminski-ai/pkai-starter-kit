# What Is a Commit

A commit is a snapshot of your entire project at a moment in time. It's the fundamental building block of Git.

## The save-point analogy

Think of a commit like a save point in a video game. When you commit, Git takes a picture of every file in your project -- not just the ones you changed, but all of them. That snapshot gets a unique ID and a timestamp, and it's preserved forever (or at least until you deliberately delete it, which is hard to do by accident).

You can always go back to any commit. If you make a mistake tomorrow, you can rewind to today's save point. If you want to see how a file looked three weeks ago, you can look at the commit from that day.

## What's in a commit

Every commit has:

- **The snapshot itself** -- the state of every file at that moment.
- **A message** -- a short description you write to explain what changed and why.
- **An author** -- who made the commit (this is set automatically).
- **A timestamp** -- when it was made.
- **A unique ID** -- a long string of letters and numbers (called a "hash") that identifies this specific commit. You'll rarely need to use these directly, but Claude Code might mention them.

## Why commit messages matter

When you commit, you include a short message describing what you did. This matters more than you might think:

- **For your future self.** "Updated the meeting notes" is much more useful than "changes" when you're looking through history three weeks later.
- **For your teammates.** When someone pulls your changes, they can scan the commit messages to understand what happened without reading every file.
- **For recovering from problems.** If something breaks, good commit messages help you figure out which change caused the issue.

You don't need to write an essay. A single sentence is fine:

- "Added the new budget spreadsheet"
- "Fixed the typo in the project charter"
- "Reorganized the meeting-notes folder"
- "Updated routing rules for the navigator prompt"

When you tell Claude Code something like "commit -- updated the meeting notes," Claude Code uses your description as the commit message.

## How often should I commit?

**More often than you think.** A good rule of thumb: commit whenever you've completed a meaningful chunk of work. That might be:

- Finishing an edit to a document
- Adding a new file
- Reorganizing a folder
- Before you step away for a break
- Before you try something risky (so you have a save point to return to)

Small, frequent commits are better than one huge commit at the end of the day. Each commit is a save point you can return to, and smaller commits are easier to understand when you're looking through the history.

## Commits vs. pushes

This is a common point of confusion:

- **Commit** saves your work *on your computer*. It's local. Your teammates can't see it yet.
- **Push** uploads your commits *to GitHub*. Now everyone can see them.

You can make several commits before pushing. That's perfectly normal -- you're building up a series of save points locally, and then sharing them all at once when you push.

Think of it like writing postcards. Each commit is writing a postcard (creating the message). Pushing is putting them all in the mailbox (sending them). You can write five postcards and mail them together.

## Next

[Branches](Branches.md) -- working on something without affecting the main version.
