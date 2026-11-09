# Permissions Questions

While you're working with your agent in the desktop app, it will regularly stop and ask you something like "may I run this command?" or "may I edit this file?" This page explains what those prompts mean and gives you a simple, honest way to answer them.

## Why the questions exist

Claude Code asks before it does things that touch your computer — running a command, editing a file in a place you haven't already said is fine. This is a safety feature, not an error and not a sign that something's wrong. It's completely normal to see a lot of these prompts in your first few sessions. They thin out over time, as you tell the app which everyday actions your agent can just go ahead and do.

> [!tip]
> Think of these prompts as your agent showing its work before it acts, not as a wall stopping you from getting things done.

## The first question you'll see: trusting the folder

The first time you start a session on a folder, the app asks whether you trust the files in it. This is a general Claude Code safety check for any folder — some folders are ones you'd never want an AI assistant running around in unsupervised.

You'll see it during setup, for your HQ, and again when you start your first session in your agent's own environment, on its agent home. A second trust prompt there is expected. For your own agent's folders the answer is yes: you set them up, you're the one running your agent, and trusting them is what lets it do its job.
<!-- VERIFY(cold-start): the wording of the desktop app's folder-trust prompt, and whether it appears again for the HQ when the agent first works there from its own environment -->

## The plain-language rule

Most permission prompts boil down to one of a few shapes. Here's how to think about each:

- **Reading or editing files in your agent home or your HQ** — fine to allow. Those two folders are your house, and working in them is your agent's job: its memory, session logs and drafts live in the agent home, and your projects live in the HQ.
- **Running everyday commands your agent explains** — making a folder, opening a file in Typora, listing what's in a folder — fine to allow, *as long as the explanation matches what you actually asked for*. If you asked it to save a note and it says it's creating a file to save your note, that checks out.
- **Anything that leaves your computer** — sending an email, posting somewhere, publishing to the web, installing new software — or anything that **touches files outside your agent home and your HQ**: slow down and actually read the prompt. Only allow it if it's clearly the thing you asked for.
- **If a request seems to come out of nowhere** — you didn't ask for anything like it, or you can't tell why it's needed — say no and ask your agent to explain itself. Saying no is always safe. Your agent will just ask again a different way, or explain more, or find another approach. You lose nothing by declining and asking a question.

> [!tip]
> When in doubt, the safe default is always "no, explain more" — never "yes, hope for the best." Your agent can explain any prompt.

## "Always allow" choices

Many of these prompts offer to remember your answer, so you won't be asked again for the same kind of action. For routine actions inside your house — the kind your agent does constantly, like writing session logs or updating its own memory — choosing "always allow" is reasonable, and it cuts down on future interruptions quite a bit.

For anything outbound (leaving your computer) or outside your two folders, it's better to keep answering one at a time rather than setting up a standing "always allow." Those are exactly the actions where you want a chance to notice if something looks off, and a blanket approval takes that chance away.

## A note on modes

The desktop app has a mode picker that changes how often your agent asks permission at all. Three are worth knowing:

- **Manual mode** — your agent asks before each action, and you approve it yourself. Choose it any time you want to see every step; you can switch to it in the mode picker, or by pressing Shift+Tab.
- **Plan mode** — your agent lays out its intended steps before doing anything.
- **Auto mode** — your agent proceeds without asking each time, with a safety layer checking its actions.

Use whichever mode your setup left you in, and switch to Manual whenever you want a closer look. If a safety layer ever blocks your agent in auto mode, one of the ways forward is to switch to Manual mode, approve that one action yourself, and switch back. That leaves nothing permanent behind; see [When a Safety Layer Blocks You](../keeping-yourself-safe/When%20a%20Safety%20Layer%20Blocks%20You.md). The project-management book in this starter kit has a page that covers plan mode and auto mode in more depth.
<!-- VERIFY(cold-start): the desktop app's mode names as shown in the mode picker, which mode a new house starts in, and that Shift+Tab cycles them in the Code tab -->

> [!warning]
> **Windows users:** on a Mac, Claude Code runs commands inside a macOS sandbox — a protective layer that limits what any single command is allowed to touch on your computer, even before you answer a permission prompt. **Windows doesn't have this sandboxing.** That means on Windows, your answers to these permission prompts are doing more of the safety work themselves. The guidance above still applies — it just matters a little more that you actually read the prompt before answering, especially for anything outbound or outside your house.
<!-- VERIFY(cold-start): whether the macOS sandbox applies to commands run from the desktop app's Code tab, and whether Windows still has none -->

## The reassurance

These permission prompts are the training wheels of trust between you and your agent. Early on, you'll see a lot of them, and that's by design — it's how you both learn where the boundaries are. Over time, as you approve the patterns you're comfortable with, the interruptions largely disappear, and what's left are the ones that actually deserve your attention.

## Next Step

Return to the [Getting Started](README.md) index, or continue with whichever page you were working through.
