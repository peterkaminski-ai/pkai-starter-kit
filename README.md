# pkai-starter-kit

A starter kit for building your own personal AI agent — a persistent, file-based agent you talk to through Claude Code, that lives in a **house** on your own computer.

**Home page:** https://peterkaminski.ai/starter-kit

This kit is a **reference library, not a house**. You don't move into it — you (and Claude Code, doing the heavy lifting) *read* it and build your own house from it: an **agent home** for your agent's persona and memory, and a **headquarters** for your projects and working files. The build takes one guided conversation.

This is **V3**. It is the *shaped* version of the **PKAI benchmark** — the fuller statement of what an agent could be — modified to be a better place to start. `LINEAGE.md` says where it came from and where the next version will be; `SHAPING.md` says what was left out and what was added. V3 sits beside V2 rather than replacing it; if you built from V2, read `MOVING-FROM-V2.md`.

This is **V3.0**, and it is a **beta**: the first release with two artifacts, made fast, and built to be improved often. Minor releases — 3.1, 3.2 — will follow as improvements arrive from the houses using it; none is promised for any date, but a small release as often as every week is now practical, and that's the point: it's the design, not a caveat. Everything in V3 is a standalone unit — a skill is one folder, a chapter is one file, a safety section is one block in a persona — so an improvement is one unit, offered and taken by pull, and never a reinstall. `CONTRIBUTING.md` says how to offer one.

## If you're a person

Don't start here — start with the home page, or go straight to **`START-HERE.md`**, the short instructions you'll drive. The shape of it:

1. Check **`REQUIREMENTS.md`** — what you need before you begin (a Claude Pro or Max account, Claude Code installed, a couple of basics).
2. Make an empty **headquarters** folder and start Claude Code in it.
3. Paste in one kickoff message. Claude downloads this kit, reads it, asks you two questions about how you'll use your agent, and helps you build it — with you driving every step.

## If you're a Claude reading this

You've been asked to help a person set up their own agent. **Read `BUILD.md`** — it's addressed to you.

## What's inside

- **`LINEAGE.md`** — where this kit came from, three generations back, and where to pull the next version from. Every V3 artifact starts with one of these.
- **`START-HERE.md`** — the setup instructions, addressed to the person. They drive; Claude does the heavy lifting.
- **`BUILD.md`** — the build reference, addressed to the Claude doing the building.
- **`REQUIREMENTS.md`** — what you need: account, computer basics, and the two *surfaces* (a chat surface and a review surface).
- **`ARCHITECTURE.md`** — the shape of what you're building: agent home, headquarters, the house they make together, and the stairs a house climbs.
- **`WAIVER.md`** — the participation waiver; agreeing to it is the first step of setup.
- **`personas/`** — three ready-to-personalize personas, showing the range of what an agent can be like. Pick one, blend, or invent.
- **`skills/`** — self-contained skills your agent can take on, one folder each, each carrying its own lineage, licence and credits so it can travel alone. `skills/README.md` says which to install for which way of working.
- **`template/`** — the folder skeletons the build instantiates: `agent-home/` and `hq/`.
- **`bookshelf/`** — the small shelf of books that comes with your agent:
  - `getting-started/` — Claude Code, terminals, reading your files, Git and GitHub from scratch
  - `git-guide/` — version control without the jargon (optional reading; your agent handles git for you)
  - `project-management/` — project management, and working with your principal
  - `your-house/` — a small house or a large one: the stairs, the two ways in, foreground and background
  - `working-with-other-houses/` — cooperating with other agents: jams, pads, and what to think about when you're invited into a room
  - `keeping-yourself-safe/` — safety and security first, then privacy
- **`MOVING-FROM-V2.md`** — for houses built from V2. Nothing is reinstalled.
- **`CHANGES.md`** — what changed, dated, written for an agent to read.
- **`WISHLIST.md`** — where we'd like this to grow; aspirational, undated.

## Beyond the kit

**Free and paid PKAI workshops** are the instruction channel beyond these documents — sign up for email updates at https://peterkaminski.ai to hear about workshops and new kit releases.

## License

This kit and everything in it — including the bookshelf and the skills — is licensed under the [Mozilla Public License 2.0](LICENSE.md), © 2026 Peter Kaminski. See `LICENSE.md` for the full text, including the Disclaimer of Warranty (Section 6) and Limitation of Liability (Section 7). Each skill folder carries its own copy of the licence, so a skill stays licensed when it travels.

### Why MPL-2.0, and not a Creative Commons licence

People ask, because a kit that is mostly prose looks like a Creative Commons thing. Five reasons, and lineage is the first:

1. **It's the licence this line has always had.** `pkai-agent` was refounded under MPL-2.0 in May 2026, v2 kept it, and V3 keeps it. One licence up and down the lineage means a house can pull a newer skill into an older home, or hand a chapter back, without a compatibility check.
2. **It's file-scoped.** MPL's share-alike stops at the file: if you change one of these files and pass it on, that file stays MPL and your changes to it are open, but your own files beside it — your charter, your memory, your house — are yours, under whatever terms you like. Creative Commons ShareAlike attaches to the *derivative work* as a whole, and a charter you adapted from a persona is a derivative work; we don't want a licence that reaches into your house.
3. **Much of this runs.** A skill is executed by an agent; the hook is a script; the settings file is configuration. MPL is written for things that are edited, run and redistributed; Creative Commons is written for things that are read. A kit that ships both is on firmer ground under the software licence, and MPL covers the prose fine.
4. **The waiver leans on it.** `WAIVER.md` points at MPL's Disclaimer of Warranty (§6) and Limitation of Liability (§7). Keeping one licence keeps the waiver true.
5. **No non-commercial clause, on purpose.** The stairs include "try a kit, or buy one," and a skill is meant to travel to any agent, including one inside something someone sells. A licence that forbade that would forbid the network this is for. What MPL asks in return is only that changes to these files stay open.
