---
name: make-a-skill
description: Writes a new skill as a standalone folder that can travel to another house — SKILL.md with a description that says when it fires, plus LINEAGE.md (credits, heard or read) and LICENSE.md — from a lesson the person and agent have learned, checked against the current skill format rather than remembered. Use when the person says "make me a skill for…", "turn that into a skill", "package this so I can give it to someone", "we keep doing this the same way", or when the same procedure has been run by hand three times.
license: MPL-2.0
---

# Make a skill

A skill is a folder an agent can take on: what to do, when it applies, and — because skills get passed around one at a time — its own lineage, credits and licence, so a skill that arrives alone still says where it came from and on what terms. A skill is the printed-book version of a lesson: a thin but standard way to carry the lesson from one house to another. Write it as craft, not plumbing.

## Before you write

- **Check the current format.** Read the tool's own documentation for skills before writing front matter; formats change, and a remembered field name is a guess. Note which fields are required, what the description length limit is, and where skills install.
- **Is it a skill?** A skill is something an agent *does on request* — a procedure with a beginning and an end. A way of behaving all the time belongs in the charter, not a skill. A fact belongs in memory. A lesson for a *person* belongs in a chapter. If it's two of these, make the skill and point at the other.
- **Rule of three.** One time is an event; twice is a coincidence; the third time by hand is when it becomes a skill. Don't package the first occurrence.

## The folder

```
<skill-name>/
  SKILL.md      — front matter + the procedure
  LINEAGE.md    — name, version, what it sits on, lineage, credits (heard/read), licence, pull_from, offered_at, needs, changes, thanks_to
  LICENSE.md    — the full licence text; the house's default unless the person says otherwise
  scripts/  references/  assets/   — only if needed; a skill that needs none is lighter to carry
```

The folder name is the skill name: lowercase, hyphens, a verb phrase (`save-a-memory`, not `memory`).

## Writing `SKILL.md`

1. **The description does the firing.** Say what the skill does *and when it applies*, with the phrases a person would actually say, the key use case first. Keep it inside the limit. Then read it as the model would: on a random request, would this fire when it shouldn't? Would it miss the obvious case?
2. **Second person, to the agent.** The person is "your person" or "the person."
3. **Shape:** one paragraph of purpose · before-you-start · numbered steps · what done looks like · *what this skill never does.* Sixty to a hundred and twenty lines. Every step names an output or a check.
4. **No internals.** No paths from this house, no hostnames, no script names, no names of people who didn't agree to be named. Write it so a stranger's house could run it.
5. **Include the safety edge.** If the skill can send, post, push, spend, or edit configuration, say plainly that those wait for the person, and what to do when a safety layer blocks a step (stop, show the block, offer the narrowest fix, never suggest turning it off).

## Writing `LINEAGE.md`

Copy the block from an existing skill and fill it honestly: where the lesson came from (a call, a chapter, a person's correction — *heard* or *read*, with dates), what it sits on, where a newer version would be pulled from, which stair it's offered at. Credits are for the pieces that came from somewhere else. Thanks are a practice, never a debt.

## Install and test

Copy the folder into `.claude/skills/` in the agent home. Start a fresh session and try three requests: one that should fire it, one near miss that shouldn't, one that says the skill's name outright. Fix the description until all three behave. Then commit, if the house keeps git, and mention it in the session log.

## What this skill never does

- Invent front-matter fields from memory.
- Put a person's name, a machine's path, or a house's private detail into a skill that may travel.
- Package a skill that hasn't been run by hand at least once.
