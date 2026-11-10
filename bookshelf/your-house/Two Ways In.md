# Two Ways In

Up to 4.0.0-rc.1, setup asked you two questions before it built anything: how much history you're bringing, and whether you'll mostly use a computer or a phone. From rc.3 on it doesn't ask; every house gets the skills for both, because the questions were hard to answer on day one and the skills cost nothing to have. This page still says what each path means for you, since how you'll actually use your agent shapes what's worth reading next.

Earlier versions asked a third question first, *exploring or working?*, and only a *working* house got the skills for running more than one instance of your agent at once. Every house now has a desk and can have guests — start a second session in your agent's environment while one is going, and the second becomes a guest by itself — so every house gets those skills, and the question is gone. The v4 kit doesn't teach running background instances; [Foreground and Background](https://github.com/peterkaminski-ai/pkai-benchmark/blob/main/bookshelf/your-house/Foreground%20and%20Background.md), in the PKAI benchmark, is the fuller statement.

## How much history?

**Not much** — you're starting fresh, or with a few notes. Your agent gets `save-a-memory`, because memory is what makes it yours, and it will build the rest as you go.

**A lot** — years of email, notes, transcripts, documents, and you'd like your agent to help move them into place. Setup adds the rest of the information suite: `find-it-again`, because a house with history needs to be searchable in a known order; `review-and-prune`, because memory that grows fast needs tending; and `import-chatgpt-history` and `fair-copy-a-transcript`, for bringing old conversations and meeting transcripts into place. Where the history goes is a conversation for after setup: usually a folder in the HQ that your agent reads and indexes on its own time.

The point of asking isn't the size of the pile. It's that a house with a lot of history has different first jobs — finding, filing, deciding what to keep — and the agent should start with the tools for them.

## Mostly a computer, or mostly a phone?

**Mostly a computer.** The default. You'll work in the Claude Desktop app's Code tab with a review surface beside it, and you can always continue the same session from your phone: turn on Remote Control in the Desktop app, and find the session in the Claude app on your phone. Quitting the Desktop app turns Remote Control off.

**Mostly a phone.** Some people will reach their agent only through the Claude app on a phone. The agent still runs in the Desktop app on a computer — yours, kept awake, or one that someone in your network runs for you — with Remote Control on, but the way it serves you has to change: short replies, nothing that says "open the file", one subject per session, and a warning about one button. Setup adds the `phone-path` and `send-for-review` skills and points at [The Phone Path](The%20Phone%20Path.md). Your first conversation with the agent should happen on the phone, not at the keyboard, so that it learns what you actually see.

## Changing your mind

Every answer is recorded in your agent's `memory/origin.md`, and every answer is reversible by copying a skill folder in or deleting one. Tell your agent "I think I have more history to bring in now" and it knows what to do.
