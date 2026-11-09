# The Daily Cycle

Working with Git has a rhythm. Once you get the hang of it, it becomes second nature -- like saving a document, but with a few extra steps that give you collaboration superpowers.

The basic cycle is: **work, commit.** That's the whole thing for your house, which starts with git on your computer and no remote.

Once you've added a remote, such as a GitHub repository you share with others, two more steps join in, and the cycle becomes: **pull, work, commit, push.** This page covers all four; skip the pull and push steps until you have a remote.

## The four steps

### 1. Pull -- "Get the latest" (only with a remote)

**What it does:** Downloads the latest changes from GitHub -- whatever your teammates have pushed since you last pulled.

**When to do it:** If you have a remote that others push to, pull when you sit down to work, before you start editing. This keeps you in sync and avoids conflicts. Without a remote, there's nothing to pull.

**What to tell Claude Code:**
- "Pull the latest"
- "Get the latest changes"
- "Sync from GitHub"

### 2. Work

Edit your files. Create new ones. Delete what's no longer needed. This is the part where you actually do your thing. Git doesn't do anything during this step -- it's just watching.

### 3. Commit -- "Save a checkpoint"

**What it does:** Saves a snapshot of your changes on your computer. Think of it like a named save point in a video game -- you can always come back to it.

**When to do it:** Often. Finished editing a page? Commit. About to take a break? Commit. Made a meaningful chunk of progress? Commit. Small, frequent commits are better than one giant commit at the end of the day.

**What to tell Claude Code:**
- "Commit my changes -- I updated the meeting notes"
- "Checkpoint this -- added the new section"
- "Save my work"

The short description you add helps you (and your teammates) remember what changed and why.

### 4. Push -- "Share with everyone" (only with a remote)

**What it does:** Uploads your committed changes to GitHub so your teammates can see them.

**When to do it:** After committing, when you're ready to share. You don't have to push after every single commit -- your checkpoints are saved safely on your computer even if you don't push right away. Your agent asks before it pushes anywhere, and your agent home, which holds its memory, never goes to a public or shared remote.

**What to tell Claude Code:**
- "Push my changes"
- "Send to GitHub"
- "Commit and push" (does steps 3 and 4 together)

## Putting it together

Here's what a typical session looks like:

| When | What to tell Claude Code |
|------|--------------------------|
| Finished a chunk of work | "Commit -- updated the project plan" |
| Taking a break | "Commit so nothing is lost" |
| Not sure what's going on | "What's changed?" |
| End of the day | "Is everything committed?" |

With a remote, add "Pull the latest" at the start of your day, and say "push" (or "commit and push") when you're ready to share. "What do we have that isn't pushed?" checks what hasn't gone up yet.

## The shortcut most people use

Once you have a remote, you can combine steps. Saying **"commit and push"** does the save-and-share in one go. Saying **"pull and push"** grabs the latest and sends yours. You can even say **"pull, then commit and push everything"** to do the whole cycle at once.

Claude Code is flexible about how you phrase it. You don't need to use the exact words above -- just describe what you want.

## The visual flow

```
  ┌──────────────────────────────────────────────────────────┐
  │                                                          │
  │   1. PULL             2. WORK            3. COMMIT       │
  │   Get latest  ──>    Edit files  ──>    Save snapshot    │
  │                                               │          │
  │                                               v          │
  │                                          4. PUSH         │
  │                                          Share with      │
  │                                          everyone        │
  │                                               │          │
  └───────────────────────────────────────────────┘          │
        ^                                                     │
        └─────────────── next session ────────────────────────┘
```

Without a remote, each session is work and commit, and the cycle repeats. With one, a session starts with a pull and ends with a push when you're ready to share.

## Next

[Talking to Git Through Claude Code](Talking%20to%20Git%20Through%20Claude%20Code.md) -- a full phrasebook of things you can say.
