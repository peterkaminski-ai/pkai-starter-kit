---
name: choose-a-version-scheme
description: Picks and applies the right way to version a thing — semantic versioning when other software depends on it, plain incrementing integers when people say the version aloud, dates or date-plus-serial for snapshots — always with a "v" prefix so it parses as a version; then writes it down (VERSION, tags, CHANGES) and keeps future features un-pinned. Use when the person says "what version is this", "bump the version", "should we use semver", "tag a release", "V3 or 3.0", "number these", or when a thing is about to be released, tagged, or exported for the first time.
license: MPL-2.0
---

# Choose a version scheme

A version is a name for a state of a thing. Choose the scheme once, per thing, for who will read it: machines that depend on it, or people who say it aloud. Then write it down where the next reader will look, and never make the number promise more than the thing does.

## Which scheme

- **Semantic versioning (`vMAJOR.MINOR.PATCH`)** — when other software depends on this programmatically: a library, an API, a file format, a protocol, a skill other houses install. Understand it before using it: **MAJOR** changes when something that used to work stops (a breaking change); **MINOR** when something is added and everything old still works; **PATCH** when something is fixed and nothing is added. Below `v1.0.0` anything may change; that is what `0.x` means, and it should not last forever. Don't cargo-cult semver onto a thing nobody depends on programmatically — three numbers on a document are decoration.
- **Incrementing integers (`v1`, `v2`, `v3`)** — when people say the version aloud and nothing parses it: a kit, a course, an edition, a plan, a design. This is the human-friendly default. A product can have both: *V3* is what everyone says; `v3.0.0` is the tag, if there's software under it; a point release (`v3.1`) is "the next one, with the things we pushed."
- **Dates (`v2026-09-22`)** — when the thing is a snapshot: a build, an export, a report, a dataset, a backup. The date *is* the version. Use the full ISO date; it sorts.
- **Date plus serial (`v2026-09-22-1`, `v260922-1`)** — when there may be several in one day. Keep the serial to one or two digits; if you need three you wanted a different scheme.

**Always prefix with `v`.** It marks the string as a version for humans and for tools that sort or parse; `3.0.0` is a number, `v3.0.0` is a version.

## Applying it

1. **Write the scheme down** in the thing's own docs — a `VERSION` file, a line in the README — so nobody has to infer it from the tags. State which scheme and why.
2. **Tag releases, immutably.** A tag is a name for one commit forever; never move one. If a release was wrong, cut the next one.
3. **Keep a `CHANGES` file, newest first, written for the reader of the next version** — what changed and why, so someone deciding whether to take it can decide. Date each entry.
4. **Versions coexist.** A new major version sits beside the old one; the old one keeps its number, its tag, its docs. Don't rewrite a dated artifact to a newer version; it was that version on its day.
5. **Bump when the thing changes for its readers, not when you feel like it.** A release with nothing in CHANGES isn't a release.

## Don't pin the future to a number

Write "a later release" or "the next version," not "lands in v3.2," for anything not actually being shipped now. Pinned numbers are promises the plan may not keep, and every slip means re-pinning all of them. Name the number only when the feature is genuinely committed for the literal next release and someone is building it.

## Codenames and numbers

A release may carry a name as well as a number (people remember names). If so: pre-1.0 releases stay unnamed; names start at the first real release and follow a theme in order; a name is an ID and is never reused. The number is the truth; the name is the handle. See `assign-an-id` and `choose-a-name`.

## What this skill never does

- Mix schemes on one thing (a `v2.1` after a `v2026-09-01`).
- Move a tag, renumber a past release, or edit a dated artifact's version.
- Put three-part numbers on something no software depends on.
