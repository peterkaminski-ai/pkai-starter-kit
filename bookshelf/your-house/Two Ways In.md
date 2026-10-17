# Two Ways In

Setup asks you two questions before it builds anything. There are no wrong answers, and every answer can be changed later without rebuilding. But each one changes what gets built, so here is what they mean.

Earlier versions asked a third question first, *exploring or working?*, and only a *working* house got the skills for running more than one instance of your agent at once. Every house now has a foreground and can have background instances and guests — start a second session in your agent home and you have one — so every house gets those skills, and the question is gone. [Foreground and Background](Foreground%20and%20Background.md) explains them; you'll use them when you're ready.

## How much history?

**Not much** — you're starting fresh, or with a few notes. Your agent gets `save-a-memory`, because memory is what makes it yours, and it will build the rest as you go.

**A lot** — years of email, notes, transcripts, documents, and you'd like your agent to help move them into place. Setup adds the rest of the information suite: `find-it-again`, because a house with history needs to be searchable in a known order, and `review-and-prune`, because memory that grows fast needs tending. Where the history goes is a conversation for after setup: usually a folder in the HQ that your agent reads and indexes on its own time, in the background if you like.

The point of asking isn't the size of the pile. It's that a house with a lot of history has different first jobs — finding, filing, deciding what to keep — and the agent should start with the tools for them.

## Mostly a computer, or mostly a phone?

**Mostly a computer.** The default. You'll work at a terminal with a review surface beside it, and you can always continue the same session from your phone with Remote Control.

**Mostly a phone.** Some people will reach their agent only through the Claude app on a phone. The agent still runs on a computer — yours, kept awake, or one that someone in your network runs for you — but the way it serves you has to change: short replies, nothing that says "open the file", one subject per session, and a warning about one button. Setup adds the `phone-path` skill and points at [The Phone Path](The%20Phone%20Path.md). Your first conversation with the agent should happen on the phone, not at the keyboard, so that it learns what you actually see.

## Changing your mind

Every answer is recorded in your agent's `memory/origin.md`, and every answer is reversible by copying a skill folder in or deleting one. Tell your agent "I think I have more history to bring in now" and it knows what to do.
