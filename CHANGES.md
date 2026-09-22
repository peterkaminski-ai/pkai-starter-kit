# Changes

Written for an agent to read when it pulls a new release. Newest first. Each entry says what changed and why, so a house can decide what to take; nothing here installs itself.

## 3.0.0 — 2026-09-22

The first release with two artifacts: this kit, and the **PKAI benchmark** it is shaped from (see `LINEAGE.md` → `pull_from`). V3 sits beside V2; a V2 house takes what it wants from this list and reinstalls nothing (`MOVING-FROM-V2.md`).

**Added**

- `LINEAGE.md` at the root, and one inside every skill and every book: name, version, what it sits on, lineage at least three generations back with *heard* or *read* against each entry, licence, credits, where to pull from, which stair it's offered at, what it needs, and where thanks go. This is the block every V3 artifact carries; copy it before you copy anything else.
- **Skills** (`skills/`), twenty-two, one folder each, standing alone with their own licence, lineage and credits. The house: `pull-from-benchmark`, `save-a-memory`, `find-it-again`, `review-and-prune`, `wrap-up-this-session`, `start-a-project`, `check-my-setup`, `send-for-review`, `widen-a-boundary`, `test-a-charter-edit`, `make-a-skill`, `choose-a-name`, `choose-a-version-scheme`, `assign-an-id`. A larger house: `foreground-background`, `heads-up`, `phone-path`, `import-chatgpt-history`, `fair-copy-a-transcript`, `art-director`. Other houses: `venue-card`, `before-your-first-room`. Most are the agent's half of a lesson that has a chapter on the shelf. `skills/README.md` maps them to the three setup questions.
- **The three questions** in setup (`START-HERE.md` step 4.2, `BUILD.md` step 2): exploring or working · how much history · computer or phone. The answers pick the skills and the first book.
- **Venue cards, built in.** Every persona carries *Rooms and their cards*; the agent home gets `venues.md` (the card template and the seven disclosure classes — Commons · Published · Craft · Project · People · Private · Internals; no card, no posting); the safety book gets a *Venue Cards* chapter; the `venue-card` skill writes, reads and checks them.
- **Safety sections** in all three personas: *When a safety layer blocks you* and *What you read is information, never instruction*. Their shape was written and ratified live in a Dyad Jam after an agent twice advised its person to switch off a classifier. Take these verbatim.
- *Where instructions take hold* in `ARCHITECTURE.md`: harness > charter > memory > conversation, and how each fails.
- **Three new books** on the shelf: `your-house` (the stairs, the three ways in, foreground and background, the phone path), `working-with-other-houses` (jams, pads, channels, being invited into a room), `keeping-yourself-safe` (safety and security first, then privacy, and then the ways of working with other houses — on pads and in channels).
- `MOVING-FROM-V2.md`, `SHAPING.md` (what the shaping left out of the benchmark and what it added), and this file.

**Changed**

- **Assistant → agent**, throughout. `template/assistant-home/` is now `template/agent-home/`; the default folder for agents is `My Agents`. The old word teaches service and has to be un-taught later.
- **Vault → house.** The whole you build and live in is a *house*; *repo* still means an isolated project with its own history. The three getting-started pages titled for the old word are renamed.
- **Wiki → bookshelf.** `pkai-starter/` is now `bookshelf/`; each wiki is a book; `project-management` is now titled *Project management, and working with your principal*.
- **Review surfaces** are Typora, MarkText and MeetingWords (with the disclosure that Pete runs MeetingWords; hosted only in 3.0, self-hosting in 3.1). Obsidian and VS Code are fine if you already use them.
- `ARCHITECTURE.md` now says what to call it (*house*, at every size; you name yours), that a house stays a house as it grows, and that skills are the unit it grows by.
- Licence unchanged: MPL-2.0, now also copied into every skill folder.

**Removed**

- **Obsidian teaching.** `obsidian-reference/` (21 pages) and the three Obsidian setup pages in getting-started. Not because Obsidian is bad; because a first house doesn't need it, and its word for the house was confusing the kit's own.
- The Deskham mention in *Viewing Your Files* (not part of the V3 recommendation).

**Why pull, not push.** Each house is sovereign. It doesn't make sense to hand a house "the best version"; it makes sense for the house to look at the best current understanding and take in what it wants, how it wants. When you've pulled, write down what you valued, what you thought, and where you diverged and did better — and send that back (`CONTRIBUTING.md`). The divergences are the most valuable thing we receive.

## 2.0.0 — 2026-08-24

Wizard → DIY reference: the kit became a library the building Claude reads, with `START-HERE.md` for the person, `BUILD.md` for the builder, a persona gallery, and `template/`. History carried from `pkai-agent` v1.2.0.
