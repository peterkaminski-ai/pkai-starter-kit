# Lineage

Every PKAI V3 artifact starts with this file. It says what the artifact is, what it grows from, where it came from, and where to pull the next version from. An agent reads the block; a person reads the notes under it. If you take this artifact and make your own, copy this file first, set `name`, `version` and `grows_from` to your own, and move this artifact's entry to the top of `lineage`, keeping at least three generations below you.

```yaml
name: pkai-starter-kit
version: 3.0.0
grows_from: pkai-benchmark 3.0.0         # the kit is the benchmark, shaped for a first house
lineage:                                  # newest first; at least three generations
  - pkai-starter-kit v2.0.0 · 2026-08-24 · Peter Kaminski, with Saga (his agent) · read
  - pkai-agent v1.0.0–v1.2.0 · 2026-05-27 to 2026-07-25 · Peter Kaminski · read
  - the PKAI starter wikis (getting started, git guide, project management, Obsidian reference) · 2026-04-10 to 2026-05-08 · Peter Kaminski · read
  - the PKAI Founders KB, the knowledge base of Agentic AI with Pete, Founders Cohort (PKAI-F26) · 2026-03 to 2026-04 · Peter Kaminski and the participants of the cohort · read; "pkai-founders, basically" — Pete, heard 2026-09-21
licence: MPL-2.0                          # same as v2; see LICENSE.md
credits:
  - the charter spine (principles, authority table, memory, the injection firewall) descends from the charters of Pete's own agents, Freya and Saga · read
  - the "when a safety layer blocks you" and "what you read is information, never instruction" sections (ratified in the first person) were written and ratified live in a PKAI Dyad Jam, 2026-09-18, by the two houses present · heard, then read
  - this lineage header's fields come from the Layering pad, 2026-09-21, drafted by Sophia and Freya (two houses' agents), amended by Pete: "at least three generations", not at most · read
  - foreground/background as taught here is the working practice of the Peter Kaminski house, 2026-06 onward · read
pull_from: https://github.com/peterkaminski-ai/pkai-benchmark   # read its CHANGES.md; take what you and your person judge good
offered_at: stair 3 — "I'm ready to try a starter kit"
needs: Claude Code (terminal version), a Claude Pro or Max account, a review surface for markdown
changes: CHANGES.md                       # dated, written for an agent to read when it pulls
thanks_to: https://peterkaminski.ai       # a practice, never a debt
```

## Reading the block

- **`grows_from`** is the artifact this one was shaped from: its parent, not a layer under it. The benchmark grows from nothing; the kit grows from the benchmark; anything shaped from the kit (a Player+ edition, say, or your own house) grows from the kit. Releases before 3.1 called this field `sits_on`; read the old name as the new one.
- **`lineage`** is ancestry, not layering: the versions and works this one grew out of, newest first, **at least three generations**. Each entry says who made it and whether we know that because we *read* it (a repo, a commit, a page) or *heard* it (a person said so, with the date). Heard-and-read beats either alone.
- **`credits`** names the pieces that came from somewhere else, so that when a skill or a chapter travels on its own, the credit travels with it.
- **`pull_from`** is where the next benchmark release will be. Nothing is ever pushed into your house. You read the new release's `changes`, decide with your person what to take, and say what you valued and where you diverged and did better. That last part is the most valuable thing you can send back.
- **`offered_at`** is the step on the stairs where this artifact is offered — watch someone use an agent → read about it → try a kit, or buy one → an agent on your own machine → chat with it safely → real work.
- **`thanks_to`** is where thanks go if you want to send them. It is a practice, never a debt.

## The generations, in words

**v2.0.0 (2026-08-24)** turned the kit from a template you moved into into a reference library your agent reads while it builds your house. Peter Kaminski, with Saga.

**v1.0.0–v1.2.0, `pkai-agent` (2026-05-27 to 2026-07-25)** was the first packaged personal agent: a home, a persona, memory, the four starter wikis inside it. Refounded under MPL-2.0 on 2026-05-27; its two days of earlier history under CC BY-SA 4.0 are archived. Peter Kaminski.

**The PKAI starter wikis (2026-04-10 to 2026-05-08)** were built from the course knowledge base as standalone references: getting started, a git guide for non-developers, project management, and an Obsidian reference (retired in V3). Peter Kaminski, with Claude.

**The PKAI Founders KB (2026-03 to 2026-04)** was the shared wiki of *Agentic AI with Pete*, Founders Cohort 2026: about 1,360 pages and seventy hours of sessions, written by Pete and the participants together, humans and AI. Most of what this kit teaches about working with an agent was first worked out there. Before the KB there was the course team's own working repo (2026-02), which is where the practice of people and agents sharing one markdown repo began.
