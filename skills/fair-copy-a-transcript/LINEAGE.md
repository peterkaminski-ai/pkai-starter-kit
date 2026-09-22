# Lineage — `fair-copy-a-transcript`

This skill travels alone, so it carries its own lineage, credits and licence. If you copy the folder, copy this file with it; if you make your own version, set `name`, `version` and `sits_on` to your own and move this one to the top of `lineage`.

```yaml
name: fair-copy-a-transcript
version: 3.0.0
sits_on: pkai-starter-kit 3.0.0          # shipped in the kit; also in pkai-benchmark 3.0.0
lineage:
  - pkai-starter-kit v3.0.0 · 2026-09-22 · Peter Kaminski, with Saga (his agent) · read
  - pkai-starter-kit v2.0.0 · 2026-08-24 · Peter Kaminski, with Saga · read
  - pkai-agent v1.0.0–v1.2.0 · 2026-05 to 2026-07 · Peter Kaminski · read
  - the PKAI Founders KB, Agentic AI with Pete, Founders Cohort 2026 · Peter Kaminski and the participants · read; "pkai-founders, basically" — Pete, heard 2026-09-21
licence: MPL-2.0                          # LICENSE.md in this folder
credits:
  - the Peter Kaminski house's transcript fair-copy procedure (a menu, not a checklist; the garble table; 'the transcript is a machine's guess') · read
pull_from: https://github.com/peterkaminski-ai/pkai-benchmark   # skills/fair-copy-a-transcript/
offered_at: stair 6 — a house that records its rooms
needs: Claude Code with skills enabled; installed at <agent home>/.claude/skills/fair-copy-a-transcript/
changes: 3.0.0 — 2026-09-22 — first release
thanks_to: https://peterkaminski.ai       # a practice, never a debt
```
