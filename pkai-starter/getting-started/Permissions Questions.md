# Permissions Questions

While you're working with Claude Code, it will regularly stop and ask you something like "may I run this command?" or "may I edit this file?" This page explains what those questions mean and gives you a simple, honest way to answer them.

## Why the questions exist

Claude Code asks before it does things that touch your computer — running a command in the terminal, editing a file outside the folders you've already told it are fine to touch. This is a safety feature, not an error and not a sign that something's wrong. It's completely normal to see a lot of these questions in your first few sessions. They thin out over time, as you tell Claude Code which everyday actions it can just go ahead and do.

> [!tip]
> Think of these questions as Claude Code showing its work before it acts, not as a wall stopping you from getting things done.

## The first question you'll see: trusting the folder

The very first time you run `claude` inside your assistant's folder (this vault), it asks whether you trust the files in this folder. This is a general Claude Code safety check for any folder you open it in — some folders are ones you'd never want an AI assistant running around in unsupervised.

For your own assistant's folder — the one this wiki lives in — the answer is yes. This is your assistant's home. You set it up, you're the one running it, and trusting it is what lets your assistant actually do its job.

## The plain-language rule

Most permission questions boil down to one of a few shapes. Here's how to think about each:

- **Reading or editing files inside your assistant's own folder** — fine to allow. That's its home and its job. Your assistant needs to read and write its own memory, session logs, drafts, and notes to function at all.
- **Running everyday commands your assistant explains** — making a folder, opening a file in Typora, listing what's in a directory — fine to allow, *as long as the explanation matches what you actually asked for*. If you asked it to save a note and it says it's creating a file to save your note, that checks out.
- **Anything that leaves your computer** — sending an email, posting somewhere, publishing to the web, installing new software — or anything that **touches files outside your assistant's folder**: slow down and actually read the question. Only allow it if it's clearly the thing you asked for.
- **If a request seems to come out of nowhere** — you didn't ask for anything like it, or you can't tell why it's needed — say no and ask your assistant to explain itself. Saying no is always safe. Your assistant will just ask again a different way, or explain more, or find another approach. You lose nothing by declining and asking a question.

> [!tip]
> When in doubt, the safe default is always "no, explain more" — never "yes, hope for the best."

## "Always allow" choices

Many of these prompts offer to remember your answer, so you won't be asked again for the same kind of action. For routine, in-folder actions — the kind your assistant does constantly, like writing session logs or updating its own memory — choosing "always allow" is reasonable, and it cuts down on future interruptions quite a bit.

For anything outbound (leaving your computer) or outside your assistant's folder, it's better to keep answering one at a time rather than setting up a standing "always allow." Those are exactly the actions where you want a chance to notice if something looks off, and a blanket approval takes that chance away.

## A note on modes

Claude Code has modes that change how often it asks permission at all — a **plan mode** that has it lay out its intended steps before doing anything, and an **auto-accept mode** that lets it proceed without asking each time. As a new user, it's worth staying in the default mode — the one that asks — until you and your assistant have worked together for a while and you have a feel for what it normally does. Once you're ready to explore the other modes, the project-management mini-wiki in this starter kit has a page that covers plan mode and auto mode in more depth.

> [!warning]
> **Windows users:** on Mac, Claude Code runs commands inside a macOS sandbox — a protective layer that limits what any single command is allowed to touch on your computer, even before you answer a permission question. **Windows doesn't have this sandboxing.** That means on Windows, your answers to these permission questions are doing more of the safety work themselves. The guidance above still applies — it just matters a little more that you actually read the question before answering, especially for anything outbound or outside your assistant's folder.

## The reassurance

These permission questions are the training wheels of trust between you and your assistant. Early on, you'll see a lot of them, and that's by design — it's how you both learn where the boundaries are. Over time, as you approve the patterns you're comfortable with, the interruptions largely disappear, and what's left are the ones that actually deserve your attention.

## Next Step

Return to the [Getting Started](README.md) index, or continue with whichever page you were working through.
