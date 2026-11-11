# Monitoring from Your Phone

Claude Code has a built-in feature that lets you check on a running session — and message it — from your phone. It's called **Remote Control**, and you turn it on in the Claude Desktop app: for one session, or with a setting that starts every session with it on.
<!-- VERIFY(cold-start): the name and place of the Remote Control toggle, and of the setting that turns it on for every session -->

This is what makes "walk away while Claude works on it" a real pattern instead of a wish.

## What it does

You start a session in the Desktop app on your laptop. At some point in the session — usually before you walk away — you turn Remote Control on, if it isn't on already. Then, from the Claude app on your phone, you find your computer's name and the session, and you can:

- See what Claude Code is doing right now.
- Check the recent conversation.
- Send messages to Claude Code from your phone.
- Get responses back.

It's not screen-sharing and it's not a clone. It's a thin remote interface to the same Claude Code session that's running on your machine.

## What it requires

- **Your computer has to be on, and awake.** Claude Code is running locally; the phone is just a window into it. Sleep your laptop and the session stops. The Desktop app's Keep Computer Awake helps while your agent works; turn it off before you unplug and travel.
- **The Desktop app has to stay open.** Quitting the app turns Remote Control off.
- **A running session.** Remote Control attaches to a session; from the phone, look for your computer's name, not the app's big new-session button, which starts a session somewhere else entirely (see the `phone-path` skill).

## When to use it

The good cases:

- **Long-running tasks.** You've kicked off something that'll take 20 minutes (a build, a refactor, a research sweep). Walk the dog. Glance at your phone every few minutes to see how it's going.
- **Office hours.** You're not at your desk, but the session is still alive. Quick "did it finish? what did it say?" checks without sitting down.
- **Background runs you started yesterday.** A long batch task you left running overnight. Check progress from breakfast.
- **Distributed days.** Sitting in a meeting, but Claude is still grinding through something at home. You can keep an eye on it.

When *not* to reach for it:

- You're sitting at the laptop. Just look at the screen.
- You expect to need to read large diffs or carefully review changes. The phone is fine for the "is it on track?" check, less fine for the "let me read 200 lines of code" review.

## How it pairs with "agree on a destination first"

Remote Control is the second half of the walking-away pattern. The first half is: before you walk away, **make sure you and Claude both know what's being built and where the working artifact lives.** Tell Claude to write its output to a specific file. Bound the scope so drift would be visible.

With both halves in place:

1. Set up the destination. (file path, plan, scope)
2. Remote Control on, on the laptop.
3. Walk away.
4. Glance at the phone every so often. Course-correct via the remote interface if Claude asks something or starts drifting.
5. Come back to the laptop. Open the file. Read the result.

Without the first half, Remote Control is just letting you watch a problem develop in real time from a smaller screen. With it, you've got a real distributed-work pattern.

## What about cloud-based Claude Code?

Anthropic offers a hosted version of Claude Code that runs in their cloud rather than on your machine. Pete Kaminski, who wrote this book, still doesn't recommend it for this stack.

The reason isn't that it doesn't work — it does. The reason is that Anthropic's design syncs everything via Git, in a way that makes sense once you understand it but is **counter-intuitive to the point of tripping up even Pete.** You start a session on the web; under the hood, Anthropic is committing to a branch on your behalf; later, when you're back at your laptop, you have to know the right `git fetch` / merge / branch dance to integrate the cloud session's work with what you were doing locally. It's not hard exactly, but it doesn't match the mental model people develop from local Claude Code, and the mismatches surface as small surprises that compound over a session.

If you're going to run Claude Code somewhere other than your laptop, the cleaner path is **a computer you control** — a spare laptop kept awake, or a small server — with your phone reaching it through Remote Control. That's the advanced version of this pattern, and the [Phone Path](../your-house/The%20Phone%20Path.md) page says more.

For most people, "the Desktop app on a laptop, monitored from a phone through Remote Control" is the right setup.

## See also

- [Anti-Patterns § Walking away with no shared destination](Anti-Patterns.md) — the failure mode Remote Control doesn't fix on its own.
- [Pair Programming with AI](Pair%20Programming%20with%20AI.md) — the navigator role still applies when the navigator is on the couch.
- [Plan Mode and Auto Mode](Plan%20Mode%20and%20Auto%20Mode.md) — what Claude Code is allowed to do while you're away depends on which mode you left it in.
