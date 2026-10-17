# Output Styles

Claude Code has **output styles**: a setting that changes Claude's role, tone and response format for every response in a session. The official description is in the [Claude Code docs on output styles](https://code.claude.com/docs/en/output-styles). The kit doesn't use them, and this page says why, so you aren't surprised when you meet one.

## What they are

Besides Default, Claude Code ships four built-in styles: Proactive, Concise, Explanatory and Learning. You can also write your own as Markdown files. You pick one with `/output-style` or `/config`.

## Where they meet your agent

- **Proactive pulls against the persona.** It "makes reasonable assumptions about routine decisions rather than stopping to ask." The personas open their principles with "augmentation over autonomy": routine decisions are the ones they hand back to you. Switch to Proactive and your agent is pulled two ways.
- **Concise mostly agrees** with the personas, which already ask for short answers.
- **Explanatory and Learning** are aimed at explaining code the agent writes. A house's agent mostly writes prose and memory.

## The choice sticks, and isn't in the agent's record

A style chosen with `/output-style` or `/config` is saved to `.claude/settings.local.json` on that machine, out of git. It changes how your agent behaves in every later session in that folder, but it appears nowhere in the agent's own record: not in the charter, not in memory, not in a session log. If your agent starts behaving differently and you can't see why, check which style is set.

## What the kit does

The kit leaves styles at Default on purpose, so the behavior you read in the persona file is the behavior you get. If you change one, tell your agent and ask it to note the change in a memory, so the record catches up.
