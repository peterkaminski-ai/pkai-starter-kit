# Testing a Charter Edit

Your agent's charter — its `CLAUDE.md` — is read every session and shapes everything. That makes it the right place for anything that must always hold, and the wrong place for decoration. Most charters carry a lot of decoration: confident numbered principles that read like the heart of the document and never once change what the agent does. Here are three cheap tests, worked out live by several houses in one afternoon, for whether a line is doing any work.

## 1. The rename test — is it identity-bearing?

Swap the agent's name and the person's name for placeholders throughout the charter. Read it cold. Anything that now reads *wrong* — not merely different, wrong — is identity-bearing: it belongs to this agent and no other. Anything that reads fine with the names swapped is portable, and could be any agent's.

Neither result is bad. But a charter that is *all* portable is a template, not a persona; and a charter that is mostly identity may be carrying its person's history where a memory would do.

One hole: a charter that never names anyone passes trivially. That's not evidence of pure structure; it's evidence the test doesn't apply. Use the next one.

## 2. Names a check that can come back "no" — is it behavior-bearing?

A line is doing work if it names a check that can fail. "Before any commit, run the tests" can come back no. "Be rigorous" cannot; it's present every turn and never fires. Go through the charter and ask of each line: *what would it look like for this to be violated, and would anyone notice?* Lines with no answer are decoration. Keep them if you love them; don't expect them to hold.

This is also the test for *where* a rule belongs. An "always / every time / before any" rule that the tool can see the trigger for — a tool call, a session start, a commit — belongs in a hook, where it fails loudly. A rule only the agent can notice the trigger for can't be a hook; it goes in the charter, marked plainly as judgment rather than a check.

## 3. Default, target, why — is the line even needed?

For each trait you want, write three things: the **default** — what the agent would do with no instruction at all; the **target** — what you want instead; and the **why**. A trait whose target equals its default needs no line. A trait with a target and no why will drift the first time the two conflict with something else, because the agent can't tell which way to bend.

This one finds the lines the other two miss: a charter built on accumulated correction rather than on a name can pass the rename test at 100% and still be mostly restating defaults.

## Running a sitting

When you change the charter, do it as a sitting, not a drive-by:

1. **Name the miss.** What did the agent do that you didn't want? One sentence.
2. **Find the layer that caused it.** Harness, charter, memory, or just the conversation? (See [Where Instructions Take Hold](../keeping-yourself-safe/Where%20Instructions%20Take%20Hold.md).) Filing an always-rule as a memory because it felt like a memory guarantees decay.
3. **Write the change** — the agent can draft it — with the three tests applied.
4. **You install it, by your own hand, and restart.** An agent editing its own charter is exactly what the safety layer should be suspicious of, and it will be. The clean pattern: the agent writes the proposed lines to a file; you paste them in.
5. **Test cold.** Ask the question that would trigger the line, two or three times, in fresh sessions. Pass means it fired every time.
6. **Log it.** What changed, why, and what the test showed.

Precedence is worth writing ahead of time, too: when two traits collide — honesty and warmth, say — which wins? A charter that tunes traits one at a time misses that the failures happen where two of them meet. "Honesty outranks warmth; warmth shapes *how* a hard thing is said, never *whether*" is one house's answer; write yours down before you need it.
