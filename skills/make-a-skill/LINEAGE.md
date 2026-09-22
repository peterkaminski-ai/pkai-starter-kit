# Lineage — `make-a-skill`

This skill travels alone, so it carries its own lineage, credits and licence. If you copy the folder, copy this file with it; if you make your own version, set `name`, `version` and `sits_on` to your own and move this one to the top of `lineage`.

```yaml
name: make-a-skill
version: 3.0.0
sits_on: pkai-starter-kit 3.0.0          # shipped in the kit; also in pkai-benchmark 3.0.0
lineage:
  - pkai-starter-kit v3.0.0 · 2026-09-22 · Peter Kaminski, with Saga (his agent) · read
  - pkai-starter-kit v2.0.0 · 2026-08-24 · Peter Kaminski, with Saga · read
  - pkai-agent v1.0.0–v1.2.0 · 2026-05 to 2026-07 · Peter Kaminski · read
  - the PKAI Founders KB, Agentic AI with Pete, Founders Cohort 2026 · Peter Kaminski and the participants · read; "pkai-founders, basically" — Pete, heard 2026-09-21
licence: MPL-2.0                          # LICENSE.md in this folder
credits:
  - Pete's 'you don't build skills by hand; you have your agent build it' and 'a skill is a very poor publication, but a very useful and standard way of communicating a lesson' (2026-09-18) · heard, then read; the rule of three from Pete's estate · read
pull_from: https://github.com/peterkaminski-ai/pkai-benchmark   # skills/make-a-skill/
offered_at: stair 6
needs: Claude Code with skills enabled; installed at <agent home>/.claude/skills/make-a-skill/
changes: 3.0.0 — 2026-09-22 — first release
thanks_to: https://peterkaminski.ai       # a practice, never a debt
```
