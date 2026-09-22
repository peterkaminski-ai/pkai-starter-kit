# Shaping

The starter kit is the PKAI benchmark, *shaped*: modified in the ways that make it a better place to start. This file says exactly what the shaping removed and what it added, so that "the kit is a shaped version of the benchmark" is something you can check rather than something you're told. If this list were empty, the two would be one artifact with two names.

The benchmark is at the `pull_from` address in `LINEAGE.md`. Same layout as the kit; full size.

## What the kit leaves out

| In the benchmark | Not in the kit, because |
|---|---|
| **`CHARTER.md`** — one full charter with every section: the spine, the safety sections, foreground/background, the larger-house conventions, the desk, the disclosure gate, the venue cards | A first house needs a persona, not a constitution. The kit ships three personas that carry the spine, the safety sections and *rooms and their cards*, and leave the rest of the large house sections for later. |
| **`HOUSE.md`** — the house in full, grown large: several agents, the desk and how it passes, shared state and who owns it, fleets of background instances, books and their boxes as a filing convention | The kit gives the larger house one chapter. The rest waits until a house has grown enough to need it. |
| **`PULL-PROTOCOL.md`** — the pull mechanism in full: the two lineage mechanisms (every object remembers a little; a few remember a lot), the report back, the reasons | The kit carries the skill (`pull-from-benchmark`) and the `changes` field; the reasoning is the benchmark's to hold. |
| **All the skills** | All nineteen ship on the kit's shelf; the three setup questions pick which are installed. The benchmark holds everything a house in the network has offered, including ones no first house needs. (At 3.0.0 the two sets are the same twenty-two; they'll diverge as houses offer skills back.) |

## What the kit adds

| In the kit | Not in the benchmark, because |
|---|---|
| **`START-HERE.md`** and **`BUILD.md`** — the guided build, the three questions, the kickoff message | The benchmark isn't installed; it's read. It has no setup path, on purpose. |
| **`WAIVER.md`**, as the first gate of setup | The benchmark asks nothing of anyone. |
| **`personas/`** — three temperaments, ready to personalize | Shaped from `CHARTER.md`: each persona is the spine plus one voice, minus the larger-house sections other than rooms and their cards. |
| **`template/`** — the folder skeletons the build instantiates | The benchmark describes the shape; the kit ships the empty folders. |
| **`REQUIREMENTS.md`**, the getting-started book's install pages, and the *Moving from V2* note | Onboarding. The benchmark assumes a house exists. |
| **The three questions** — exploring/working, history, computer/phone | The benchmark has no first day. |

## What is identical in both

`LICENSE.md`, `template/`, `skills/` for the six the kit carries, and every chapter of the shelf. `LINEAGE.md` differs only in `sits_on`; `CHANGES.md` is each artifact's own. Where the two differ in a shared file, the benchmark is right and the kit has drifted; say so in the report back.

## A note on direction

Lessons arrive in the benchmark first. A house that finds something better reports it back; if it's good, the benchmark takes it; the kit takes it from the benchmark at the next shaping. The kit never leads the benchmark, and the benchmark never pushes into a house.
