# Lineage — `start-a-project`

This skill travels alone, so it carries its own lineage, credits and licence. If you copy the folder, copy this file with it; if you make your own version, set `name`, `version` and `sits_on` to your own and move this one to the top of `lineage`.

```yaml
name: start-a-project
version: 3.0.0
sits_on: pkai-starter-kit 3.0.0          # shipped in the kit; also in pkai-benchmark 3.0.0
lineage:
  - pkai-starter-kit v3.0.0 · 2026-09-22 · Peter Kaminski, with Saga (his agent) · read
  - pkai-starter-kit v2.0.0 · 2026-08-24 · Peter Kaminski, with Saga · read
  - pkai-agent v1.0.0–v1.2.0 · 2026-05 to 2026-07 · Peter Kaminski · read
  - the PKAI Founders KB, Agentic AI with Pete, Founders Cohort 2026 · Peter Kaminski and the participants · read; "pkai-founders, basically" — Pete, heard 2026-09-21
licence: MPL-2.0                          # LICENSE.md in this folder
credits:
  - the project-management wiki (2026-05-08) — the wish, the iteration loop, project as repo, starting a new project · read; 'everything is a project', taught 2026-09-01 · read
  - check the house for an existing project before starting a new one; write the plan's outcome as checks that can come back no; say whether the plan has been reviewed — Christopher Allen, PRs #11, #12 and #14 to the kit, 2026-10 · read
pull_from: https://github.com/peterkaminski-ai/pkai-benchmark   # skills/start-a-project/
offered_at: stair 5 — the first house
needs: Claude Code with skills enabled; installed at <agent home>/.claude/skills/start-a-project/
changes: 3.0.0 — 2026-09-22 — first release
thanks_to: https://peterkaminski.ai       # a practice, never a debt
```
