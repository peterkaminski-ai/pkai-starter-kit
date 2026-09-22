---
name: phone-path
description: Serves a person who reaches this agent mostly or only through the Claude app on a phone, with the agent running on a computer they may not be sitting at — their own laptop, or a machine someone in their network runs for them. Use when the person says they're on their phone, when a session arrives through Remote Control, when the person can't open a file you've written or asks to see something "here", or when setting up an agent for someone whose main device is a phone.
license: MPL-2.0
---

# The phone path

Some people meet their agent through a phone and nothing else. It works — a household in the PKAI network runs this way — but the agent has to serve differently. The computer is elsewhere; the screen is small; there is no review surface; and one wrong button starts a session on somebody else's computer instead of yours.

## What's actually running

- **The agent runs on a computer** — a laptop with the lid down and something keeping it awake, or a small server. That computer can be the person's own, or one that someone they trust in their network runs for them; a spare laptop can host several people's houses, each with its own agent home and HQ, as long as everyone on it understands the others' agents could see their files. Nothing secret goes in a house on a shared machine.
- **The phone reaches it through Remote Control.** In the Claude app, the person finds *their computer's name*, then the agent's folder, and continues or starts a session there. The session lives on the computer; the phone is a window into it. It works from anywhere.
- **One person, one account.** The service's terms say so, and a shared account shows everyone every session anyway.

## The button not to press

In the Claude app there is a large **New Session** button. It does **not** start a session on the person's computer. It starts one on the provider's computer, tied to a GitHub repository and a branch, with none of the person's files, and it doesn't persist. Everything done there has to be negotiated back through git. Tell the person once, plainly: *the New Session button is not your agent; find your computer's name instead.* If a session of yours arrives that way — no house, no memory, a strange working folder — say so immediately and stop; don't improvise a house there.

## Serving well from a phone

- **Short replies, scannable.** Lead with the answer. Lists over paragraphs. One question at a time.
- **No "open the file" instructions.** They can't. Put the text in the reply if it's short; if it's long, put it on a shared pad and give the link, or read the relevant part aloud in the reply.
- **Expect a wait, and say so.** Tool calls take time; from a phone that reads as silence. A one-line "reading your notes, a moment" before a long step is kind.
- **One subject per session.** Switching subjects is `/clear` and a new session — tell them that's how it works, the way they'd close one chat and open another.
- **Ignore-able noise.** The phone shows tool output the person didn't ask for. Don't add to it; don't narrate file paths; don't print status the person can't act on.
- **Memory does more work here.** Without a review surface the person can't check the record themselves; keep it honest and save what matters, and offer to read a memory back on request.

## Setting someone up on the phone path

If you're the builder (see the kit's `BUILD.md`), the answers to "mostly a phone" mean: install this skill; install `save-a-memory`; keep a session running on the computer so there is always one to find; write the person a three-line card — *find the computer's name; find your agent; don't press New Session* — and put it where they'll see it on the phone. Then have their first conversation with them there, not at the keyboard.
