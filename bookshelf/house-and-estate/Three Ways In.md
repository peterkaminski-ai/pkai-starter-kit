# Three Ways In

Setup asks you three questions before it builds anything. There are no wrong answers, and every answer can be changed later without rebuilding. But each one changes what gets built, so here is what they mean.

## Exploring, or working?

**Exploring** means one agent, and you get to know it. You chat, you ask it things, you let it write and read for you, you watch what it remembers. Most people should start here even if they're sure they'll want more, because the habits of stair 5 — what to save, what to ask, how to correct it — are the habits stair 6 runs on.

**Working** means you already know you'll want more than one agent at a time: the one you're talking to, and one or more running long jobs while you do. Setup adds the `foreground-background` skill and a `bg/` folder in the agent home for background instances to work in. Nothing else changes; the working path is the exploring path plus one skill.

If you're unsure: exploring. The working path is one copied folder away, any day.

## How much history?

**Not much** — you're starting fresh, or with a few notes. Your agent gets `save-a-memory`, because memory is what makes it yours, and it will build the rest as you go.

**A lot** — years of email, notes, transcripts, documents, and you'd like your agent to help move them into place. Setup adds the rest of the information suite: `find-it-again`, because a house with history needs to be searchable in a known order, and `review-and-prune`, because memory that grows fast needs tending. Where the history goes is a conversation for after setup: usually a folder in the HQ that your agent reads and indexes on its own time, in the background if you chose the working path.

The point of asking isn't the size of the pile. It's that a house with a lot of history has different first jobs — finding, filing, deciding what to keep — and the agent should start with the tools for them.

## Mostly a computer, or mostly a phone?

**Mostly a computer.** The default. You'll work at a terminal with a review surface beside it, and you can always continue the same session from your phone with Remote Control.

**Mostly a phone.** Some people will reach their agent only through the Claude app on a phone. The agent still runs on a computer — yours, kept awake, or one that someone in your network runs for you — but the way it serves you has to change: short replies, nothing that says "open the file", one subject per session, and a warning about one button. Setup adds the `phone-path` skill and points at [The Phone Path](The%20Phone%20Path.md). Your first conversation with the agent should happen on the phone, not at the keyboard, so that it learns what you actually see.

## Changing your mind

Every answer is recorded in your agent's `memory/origin.md`, and every answer is reversible by copying a skill folder in or deleting one. Tell your agent "I think I'm ready for the working path now" and it knows what to do.
