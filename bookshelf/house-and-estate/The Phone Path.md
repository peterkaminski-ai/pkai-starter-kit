# The Phone Path

Some people meet their agent through a phone and nothing else. No laptop open, no terminal, no review surface — the Claude app, a conversation, and an agent that remembers them. It works. One household in the PKAI network already runs this way, and the person on the phone gets an agent that remembers better and goes deeper than the chatbots she used before. But the setup is, in the words of the person who built it, "pretty fiddly and pretty weird," and it's worth writing down plainly.

## What's actually running

The agent runs on a computer. On the phone path that computer is one of:

- **The person's own laptop**, lid down, kept awake by a utility that stops it sleeping, with one terminal running the agent. They may open the lid twice a week; mostly they don't.
- **A computer someone else runs for them.** A spare laptop or a small server, run by someone in their network they trust — a family member, a friend, a house that hosts several. One machine can host several people's houses, each with its own agent home and HQ. Somewhere between two and a few dozen is realistic; it depends on the machine.

The phone reaches that computer through **Remote Control**: in the Claude app, the person finds *the computer's name*, then their agent's folder, and continues the session running there — or starts a new one there, if the host has arranged a session to be started. The session lives on the computer; the phone is a window into it, and it works from anywhere in the world.

## Two rules of the shared machine

**One person, one account.** The service's terms say so. A shared account also shows everyone every session — the person on the phone has to learn to find their own agent's name and ignore the host's fleet — so even where it's tolerated for a while, it's a transition, not a destination. Whether several accounts can live on one machine cleanly is an open question; separate containers are the likely answer, and not yet a written one.

**Nothing secret on a shared machine.** An agent on a shared computer *could* wander into another person's HQ. Among friends who trust each other that's acceptable, on the understanding that the super-secret things live somewhere else. Say this out loud when you set someone up; don't let them find it out.

## The button not to press

In the Claude app there is a large **New Session** button. It does **not** start a session on the person's computer. It starts one on the provider's computer, tied to a GitHub repository and a branch, with none of the person's files, on a machine that isn't persistent — and everything done there has to be negotiated back through git, on a branch nobody wanted. A person who presses it by accident ends up somewhere that looks like their agent and isn't.

So the card a phone-path person needs is three lines: *find the computer's name; find your agent; don't press New Session.* The host arranges things so there is always a session to find.

## What the agent does differently

The `phone-path` skill carries this for the agent, but the person should know it too:

- **Short, scannable replies.** The answer first; lists over paragraphs; one question at a time.
- **No "open the file."** They can't. Short text goes in the reply; long text goes on a shared pad, with a link — MeetingWords is the surface the phone can reach. (Many phone-path people never learn the pad exists, and that's fine.)
- **Expect a wait, and say so.** Forty seconds of thinking, from a phone, looks like silence. A line before a long step is kindness.
- **One subject per session.** Switching subjects is `/clear` and a new session — the way you'd close one chat and open another. The person on the phone learns this in a day.
- **Ignore-able noise.** The phone shows tool output the person never asked to see. There's a day of adjustment ("it prints weird things, then it answers"); after that it just works. The agent shouldn't add to the noise.
- **Memory does more work.** With no review surface, the person can't check the record. The agent keeps it honest and reads it back on request.

## Setting someone up

If you're the builder: install `phone-path` and `save-a-memory`; keep a session running on the host computer so there's always one to find; write the three-line card and put it where the phone will show it. Then have the first conversation *on the phone*, not at the keyboard, so the agent learns what the person actually sees. A version of the kit that makes this simpler — self-hosted surfaces, an app — is planned for V3.1; for V3.0, this is the path, and it's a real one.
