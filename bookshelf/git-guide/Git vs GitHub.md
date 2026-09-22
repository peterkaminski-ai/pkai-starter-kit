# Git vs GitHub

These two names sound almost the same, and people use them interchangeably, but they're different things that work together.

## Git: the tool on your computer

**Git** is a program that runs on your computer. It tracks changes to files in a folder, keeps a history of every version, and lets you save checkpoints of your work. Git works entirely offline -- you don't need an internet connection to use it.

When you ask Claude Code to "save my work" or "commit my changes," Git is the tool doing the actual work on your machine.

## GitHub: the website in the cloud

**GitHub** is a website (github.com) that stores a copy of your files in the cloud. It's where your team's shared version lives. When you "push" your changes, you're uploading them from your computer to GitHub. When you "pull," you're downloading what others have uploaded.

GitHub also provides collaboration tools: you can browse the history of changes in a web browser, leave comments, review each other's work, and manage who has access to the project.

## How they work together

```
Your computer                    The cloud
┌──────────────┐                ┌──────────────┐
│              │   push ──>     │              │
│     Git      │                │    GitHub    │
│              │   <── pull     │              │
└──────────────┘                └──────────────┘
```

1. **Git** lives on your computer and tracks your local changes.
2. **GitHub** lives on the internet and stores the shared version.
3. You use **push** to send your changes up to GitHub.
4. You use **pull** to bring other people's changes down to your computer.

The key thing to remember: your work isn't shared with anyone until you push it to GitHub. And you won't see anyone else's work until you pull it down. This is different from Google Docs, where changes are shared instantly.

## An analogy

Git is like your personal journal. You write in it, keep track of your notes, and can flip back through the pages anytime.

GitHub is like a shared bulletin board. When you're ready, you post a copy of your notes to the board so everyone can see them. And you check the board to see what others have posted.

## Do I need both?

For this course, yes. Git does the tracking on your computer, and GitHub is how we share and back up the work. But you'll interact with both through Claude Code -- you won't need to visit github.com or type Git commands directly.

## Next

[Installing Git](Installing%20Git.md) -- getting Git set up on your machine.
