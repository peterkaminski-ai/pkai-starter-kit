# What Is Version Control

You already know how to collaborate on files. If you've ever worked in a shared Google Doc, you've experienced one model: everyone edits the same document in real time, and Google keeps a history of every change.

Git is a different model for the same problem. Instead of everyone editing the same file at the same time, Git lets everyone work on their own copy and then merge their changes together. It tracks the full history of every file, so you can always see what changed, when, and by whom.

## Why not just use Google Docs?

Google Docs works great for a single document. But when you're working with a whole project -- dozens or hundreds of files, with structure that matters -- you need something more. Git gives you:

- **Complete history.** Every change ever made is recorded. You can go back to any previous version of any file.
- **Offline work.** You don't need an internet connection to work. You sync up when you're ready.
- **Safe merging.** When two people edit the same file, Git helps you combine the changes without losing either person's work.
- **Branching.** You can experiment with changes in isolation, without affecting the main version, and fold them back in when you're satisfied.

## The mental model

Think of it this way:

- **Google Docs** is like a shared whiteboard. Everyone draws on it at the same time, and you can see each other's cursors moving.
- **Git** is like everyone having their own notebook. You each write in your own copy, and periodically you compare notes and combine what you've written.

The tradeoff is that Git requires a few explicit steps (save, sync, share) that Google Docs handles automatically. But those explicit steps give you much more control, and they make it possible to work with complex projects that have many files.

## You don't need to learn Git commands

Here's the good news: you're using Claude Code, which handles all the Git operations for you. You describe what you want in plain English -- "save my work," "get the latest changes," "what's changed since yesterday?" -- and Claude Code takes care of the rest.

This guide will help you understand *what's happening* and *why*, so you can make good decisions about when to save, when to sync, and what to do when something unexpected happens. But you won't need to memorize any technical commands.

## Next

[Git vs GitHub](Git%20vs%20GitHub.md) -- understanding the difference between the tool and the platform.
