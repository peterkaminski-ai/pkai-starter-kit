# Lineage — `choose-a-version-scheme`

This skill travels alone, so it carries its own lineage, credits and licence. If you copy the folder, copy this file with it; if you make your own version, set `name`, `version` and `grows_from` to your own and move this one to the top of `lineage`.

```yaml
name: choose-a-version-scheme
version: 3.0.0
grows_from: pkai-starter-kit 3.0.0       # shipped in the kit; also in pkai-benchmark 3.0.0
lineage:
  - pkai-starter-kit v3.0.0 · 2026-09-22 · Peter Kaminski, with Saga (his agent) · read
  - pkai-starter-kit v2.0.0 · 2026-08-24 · Peter Kaminski, with Saga · read
  - pkai-agent v1.0.0–v1.2.0 · 2026-05 to 2026-07 · Peter Kaminski · read
  - the PKAI Founders KB, Agentic AI with Pete, Founders Cohort 2026 · Peter Kaminski and the participants · read; "pkai-founders, basically" — Pete, heard 2026-09-21
licence: MPL-2.0                          # LICENSE.md in this folder
credits:
  - Pete, 2026-09-22: 'if you need semver, understand semver; otherwise incrementing integers, or dates, or dates+serial; usually a v prefix' · heard; the house's practice: v-tags, VERSION and CHANGES files, 'don't pin future features to version numbers' (2026-04-27), pre-1.0 unnamed and codenames from 1.0 · read
pull_from: https://github.com/peterkaminski-ai/pkai-benchmark   # skills/choose-a-version-scheme/
offered_at: stair 5 — the first house
needs: Claude Code with skills enabled; installed at <agent home>/.claude/skills/choose-a-version-scheme/
changes: 3.0.0 — 2026-09-22 — first release
thanks_to: https://peterkaminski.ai       # a practice, never a debt
```
