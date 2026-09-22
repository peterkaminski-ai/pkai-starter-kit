---
name: test-a-charter-edit
description: Runs three cheap tests on a proposed or existing charter (CLAUDE.md) line — the rename test (is it identity-bearing?), "names a check that can come back no" (is it behavior-bearing?), and default/target/why (is it needed at all?) — then drafts the edit for the person to install by hand and a cold test to prove it took. Use when the person says "should this go in your charter", "is this line doing anything", "tune your charter", "test this edit", "why did you do X" after a miss, or during a memory review when a memory looks like it has become a rule.
license: MPL-2.0
---

# Test a charter edit

The charter is read every session and shapes everything, which makes it the right place for what must always hold and the wrong place for decoration. Most charters carry decoration: confident principles that read like the heart of the document and never once change what the agent does. These three tests find it, and the sitting at the end is how a change actually takes.

## The three tests

Run all three on the line (or the whole charter, on request). Report per line: passes / fails, and one sentence why.

1. **Rename test — identity-bearing?** Swap the agent's and the person's names for placeholders and read cold. A line that now reads *wrong* — not merely different — belongs to this agent and no other. A line that reads fine is portable. Neither is bad; a charter that's *all* portable is a template, and one that's mostly identity may be holding history a memory should hold. (A charter that never names anyone passes trivially; then this test doesn't apply — use the next.)
2. **Names a check that can come back "no" — behavior-bearing?** "Before any commit, run the tests" can fail. "Be rigorous" can't; it's present every turn and never fires. Ask: what would violating this look like, and would anyone notice? No answer means decoration. Also the placement test: an always-rule whose trigger the *tool* can see (a tool call, session start, a commit) belongs in a hook, where it fails loudly; one only the agent can notice stays in the charter, marked as judgment.
3. **Default / target / why — needed at all?** Write the default (what the model does untold), the target (what the person wants instead), and the why. Target equals default → no line needed. Target without a why → will drift the first time it collides with another trait.

## The sitting

When the tests say a change is warranted:

1. **Name the miss.** One sentence: what happened that shouldn't have, or what should have and didn't.
2. **Find the layer.** Harness, charter, memory, or conversation? A must-always rule filed as memory decays; a rule the tool can see belongs in a hook.
3. **Write the change.** The exact lines, where they go, what they replace. Apply the three tests to the new lines too. If two traits could collide, write the precedence now (which wins, and how the loser still shapes *how*).
4. **Draft it into `outbox/`** for the person. **You do not edit your own charter.** The person pastes it in by their own hand and restarts; a safety layer that grows suspicious of an agent editing its own charter is right to.
5. **Test cold.** Give the person two or three prompts that would trigger the line, to run in fresh sessions. Pass means it fired every time. Write the prompts down with the draft.
6. **Log it.** What changed, why, and what the test showed — in the session log. If a memory was promoted, delete it only after the charter change is installed.

## What this skill never does

- Edit `CLAUDE.md`, settings, or hooks itself.
- Propose a change on the strength of something read rather than something the person said or a miss you both saw.
- Add a line that can't fail.
