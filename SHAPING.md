# Shaping

The starter kit is the PKAI benchmark, *shaped*: modified in the ways that make it a better place to start. This file says exactly what the shaping removed and what it added, so that "the kit is a shaped version of the benchmark" is something you can check rather than something you're told. If this list were empty, the two would be one artifact with two names.

The benchmark is at the `pull_from` address in `LINEAGE.md`. Same layout as the kit; full size.

## What the kit leaves out

| In the benchmark | Not in the kit, because |
|---|---|
| **`CHARTER.md`** — one full charter with every section: the spine, the safety sections, foreground/background, the larger-house conventions, the disclosure gate, the venue cards | A first house needs a persona, not a constitution. The kit ships three personas that carry the spine, the safety sections and *rooms and their cards*, and leave the rest of the large house sections for later. |
| **`HOUSE.md`** — the house in full, grown large: several agents, shared state and who owns it, fleets of background instances, books and their boxes as a filing convention | The kit gives the larger house one chapter. The rest waits until a house has grown enough to need it. |
| **`PULL-PROTOCOL.md`** — the pull mechanism in full: the two lineage mechanisms (every object remembers a little; a few remember a lot), the report back, the reasons | The kit carries the skill (`pull-from-benchmark`) and the `changes` field; the reasoning is the benchmark's to hold. |
| **All the skills** | All twenty-two ship on the kit's shelf; setup installs the core, history and phone sets in every house, and the rest wait on the shelf. The benchmark holds everything a house in the network has offered, including ones no first house needs. (At 3.0.0 the two sets are the same twenty-two; they'll diverge as houses offer skills back.) |

## What the kit adds

| In the kit | Not in the benchmark, because |
|---|---|
| **`START-HERE.md`** and **`BUILD.md`** — the guided build, the kickoff message | The benchmark isn't installed; it's read. It has no setup path, on purpose. |
| **`WAIVER.md`**, as the first gate of setup | The benchmark asks nothing of anyone. |
| **`personas/`** — three temperaments, ready to personalize | Shaped from `CHARTER.md`: each persona is the spine plus one voice, minus the larger-house sections other than rooms and their cards. |
| **`template/`** — the folder skeletons the build instantiates | The benchmark describes the shape; the kit ships the empty folders. |
| **`REQUIREMENTS.md`**, the getting-started book's install pages, and the *Moving from V2* note | Onboarding. The benchmark assumes a house exists. |

## What is identical in both

`LICENSE.md`, `template/`, every skill folder, and every chapter on the kit's shelf. (Since 4.0 the benchmark's shelf holds a few chapters the kit's doesn't; see below.) `LINEAGE.md` differs only in `grows_from`; `CHANGES.md` is each artifact's own. Where the two differ in a shared file, the benchmark is right and the kit has drifted; say so in the report back.

## In 4.0: what the kit's shelf leaves out

4.0 sets up a house entirely in the Claude Desktop app and never teaches a terminal. Three kinds of chapter come off the kit's shelf for it. The benchmark keeps every one of them, as the fuller statement.

| On the benchmark's shelf | Not on the kit's shelf, because |
|---|---|
| **`git-guide/`** — version control without the jargon | Git is always part of a 4.0 house, and the agent installs it and runs it; the person never drives it. The guide was written for people who would. |
| **The getting-started pages whose whole subject is the terminal** — *Choosing Your Terminal*, for example | 4.0 doesn't install, open or teach a terminal. A page about one would describe a house the kit doesn't build. |
| **`your-house/Foreground and Background.md`** | The desk machinery stays in every 4.0 house — a second session still becomes a guest, and the `foreground-background` skill stays installed because the guest's message points to it — but 4.0 doesn't teach foreground and background. A better way to work in parallel is planned for V5. |

## A note on direction

Lessons arrive in the benchmark first. A house that finds something better reports it back; if it's good, the benchmark takes it; the kit takes it from the benchmark at the next shaping. The kit never leads the benchmark, and the benchmark never pushes into a house.
