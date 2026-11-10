# Changes

Written for an agent to read when it pulls a new release. Newest first. Each entry says what changed and why, so a house can decide what to take; nothing here installs itself.

## 3.2.1 — 2026-11-09

**Review surfaces: Typora first, and the editor you already have.** The kit no longer recommends MarkText. Its Mac download isn't notarized, so macOS greets a newcomer with "Apple could not verify MarkText is free of malware", and the kit's link to it pointed at `www.marktext.app`, a parked domain. The recommendation is now Typora, starting with its 15-day free trial, with TextEdit (Mac) or Notepad (Windows) as the free fallback: they show the Markdown as written, but they work. Changed: `REQUIREMENTS.md`, *Viewing Your Files*, *System Requirements*, *Why This Stack*, the getting-started README, `check-my-setup`, `send-for-review`, `MOVING-FROM-V2.md`; the kickoff in `START-HERE.md` names 3.2.1. Released with `pkai-benchmark` 3.2.1.

## 3.2.0 — 2026-11-09

**The bookshelf tells the truth about the house.** The current kit. 3.2 changes no skill, persona, template or hook; it corrects pages in three books that were carried from the kit's first version (May 2026) and still described a different setup: one big repo per project with its own `CLAUDE.md`, a "push at least once a session" loop with GitHub as the default, and a five-file memory folder. Against the house this kit actually builds — two folders, git with no remotes, push only with your yes, one fact per memory file — those pages gave wrong advice. The books written for V3 (*keeping-yourself-safe*, *working-with-other-houses*, *your-house*) needed nothing. Released with `pkai-benchmark` 3.2.0, at the same version. A 3.0 or 3.1 house takes this by reading its own copy of the shelf again, or by asking its agent to pull 3.2 and compare.

**Changed**

- *Memory Across Sessions* and *Anti-Patterns*: the memory-hygiene test is overlap, not a file count. "Five files is plenty, ten is too many" contradicted `save-a-memory` (one fact, one file) and `review-and-prune` (review when the index passes about a hundred lines), and the two pages disagreed with each other (#41, Howardgr).
- *Memory Across Sessions*: `CLAUDE.md` is your agent's charter, which you install and change by hand; the `CLAUDE-<email>.md` personalization file and the `~/.claude/CLAUDE.md` advice are gone (part of #4); preferences become memories.
- *Session Logs*, *Session Rhythm*, *Memory Across Sessions*: session logs live in the agent home's `sessions/`, flat and dated, written by `wrap-up-this-session`; a project's state lives in its `<slug>.status.md`. The "session close protocol in your CLAUDE.md" block is replaced by the skill.
- *Project as Repo*, *Starting a New Project*, the project-management README: rewritten around the two-folder house. A project is a folder in `hq/projects/<slug>/` by default; a repo of its own is the exception, lives outside the HQ, and only it may carry a `CLAUDE.md`. No `gh repo create` by default; your agent asks before creating any remote. Examples that were Pete's own setup are generalized.
- *Commit Every Session*, *Anti-Patterns*, *Your First Commit*, *The Daily Cycle*, *Talking to Git Through Claude Code*, *Working With Others*, *Git Glossary*: the everyday cycle is commit. Pull and push apply only once you've added a remote, and your agent asks before pushing. "The default is push" and "pull first" are gone.
- *Your First House*: no GitHub step and no public/private choice for the house — the agent home holds your agent's memory and is never pushed anywhere public or shared. `CLAUDE.md` is the charter made from a persona; after that you teach your agent by telling it. Names `BUILD.md` as the file that walks Claude through setup.
- *Using Claude Code With Your House*, *Why This Stack*: "the only time your files leave your computer is when you push" was wrong. Your files stay on your disk, but whatever your agent reads goes to Anthropic as part of the conversation.
- *Git vs GitHub*: git is optional but recommended; GitHub is optional.
- *Setting Up a Project*: framed as the exception for a project with a repo of its own; creating a remote and pushing need your yes.
- `START-HERE.md`: the kickoff names 3.2.0, and 3.2 is now the release `releases/latest` hands out.

**Not in this release, known**

- The same three books still carry smaller mismatches: Pete-specific examples in a few pages, `plan.md` and `wish.md` where the kit now uses `README.md` and a status file, and a `.gitignore` written by hand where the kit ships one. The full list is the audit behind this release; V4 takes the rest.

## 3.1.0 — 2026-10-17 — beta

**One foreground per house, and a smoother first day.** The largest change is the desk: a house now notices when two sessions are open on the same agent and makes the second one a guest. The rest is the first round of fixes from houses that installed 3.0, most of them Windows installs. Numbers are the kit's GitHub issues and pull requests. A 3.0 house takes these by pull: `MOVING-FROM-V3.0.md` walks through each piece, and `MOVING-FROM-V2.md` now leads a V2 house straight here.

**Added**

- **The desk lease, guests and the write guard** (#34). Hooks in the agent home keep one foreground per house: the first session holds the desk, every turn renews it, ending the session releases it, and a desk with no turn for 30 minutes (or, on a Mac or Linux, whose process has gone) is free. A session that starts while another holds the desk is a **guest**: it says so in one plain sentence, works in its own `bg/guest-<time>/` folder, and is stopped from writing `memory/`, `CLAUDE.md` and `.claude/` — a guard rail, not a lock. `scripts/desk take` hands the desk over when the person says so. `scripts/desk` is portable POSIX `sh` (macOS, Linux's `dash` and busybox, Git Bash on Windows) with no `jq`, Python or Node; `desk.ps1` and `settings.powershell.json` serve Windows machines without Git Bash, where Claude Code runs hooks under PowerShell.
- **The handoff notice** (#36). The per-turn hook says, at most once an hour, when a background or guest handoff is waiting; session start lists them.
- `MOVING-FROM-V3.0.md`: what changed and how to take each piece, including merging the new hooks into a `settings.json` that already has its own.
- `Output Styles` in getting-started: what Claude Code's output styles are, why Proactive pulls against the persona, and why the kit leaves them at Default (#24).

**Changed**

- **Every house runs foreground and background** (#35). The *exploring or working?* question is gone; `foreground-background`, `heads-up` and a `bg/` folder come with every house. *Three Ways In* is now *Two Ways In*. `widen-a-boundary` joins the every-house set too, because the charter's authority rules point to it (#2); `save-a-memory` names `review-and-prune` only if it's installed (#2).
- **`sits_on` is now `grows_from`** in every lineage block (#38): it says what a thing grew out of, not what it rests on. Read the old name as the new one. The Player+ line in `LINEAGE.md` no longer says "sit on".
- **`memory/` is the memory of record** (#3). The house's settings turn off Claude Code's own auto memory, each persona says `memory/` wins, and *Memory Across Sessions* no longer says the opposite. (Its full rewrite is still to come.)
- `BUILD.md`: why the house needs a name before asking it — "my house wants to teach your house how to make images" — with the default, a distinctness check, "it can change", and *house* versus *household* (#37); two naming tests for the agent's name, that it captions well and doesn't echo the person's own (#31); a readability probe with no Markdown the interface restyles, and the exact path to the color scheme (#30); the Windows launcher is a `<name>.cmd` that works from PowerShell, Command Prompt and Git Bash, after checking `claude` is on `PATH`, and "verify it cold" means a new window, not a tab (#25, #27); the hand-over is its own last step — `/exit` here, the launch word in a fresh window, and the second trust prompt is expected (#18).
- `Installing Claude Code`: the three steps to put `claude` on `PATH` on Windows (#28), and the harmless Bonjour / Local Security Authority dialog (#29).
- `check-my-setup` knows the `.cmd` launcher, execution policy, `PATH`, and the desk (#25).
- `now` and `now-hook` are POSIX `sh`: 3.0's needed `bash`, which some minimal Linux systems lack. The hooks run as `sh script`, so a lost executable bit (a zip download on Windows) doesn't break them, and none can block a tool call if it fails.
- `start-a-project`: check the house for an existing project first (#11), write the outcome as checks that can come back no (#12), say whether the plan has been reviewed (#14) — Christopher Allen; a `CLAUDE.md` is fine in a project's own repo, never in a folder under the HQ (#10).
- `wrap-up-this-session`: a wider look-back and a trigger on the context gauge (#8), bring the project's status file up to date (#15), the log points to other records instead of repeating them (#26) — Christopher Allen; show the person their own edits and commit them separately, before the session's commit (#7), and *Commit Every Session* says the same.
- `foreground-background` covers guests and the desk; `pull-from-benchmark` reads `grows_from` or `sits_on`, finds the release's moving guide, and drafts merged settings into `outbox/` instead of overwriting.
- *Working With Agents* names Claude Code's other uses of "agent" (#21).
- Every persona has a short *Foreground and background* section, and `desk` and `bg/` in its layout, so the charter explains what the hooks do.

**Not in this release, known**

- The session-start recommendation from #18 (open with one next step rather than "what are you working on?") is still open; 3.1 takes only the hand-over.
- On Windows, the hooks were tested at script level — under Git Bash (with both `C:\` and MSYS path forms) and under Windows PowerShell 5.1, run the way Claude Code runs them — but not in a full Claude Code session. On macOS they were tested in real sessions, and on Linux at script level under `dash` and busybox.

## 3.0.0 — 2026-09-22 — beta

**A beta, made fast and built to be improved often.** Minor releases follow as improvements arrive — none promised for a date, but as often as every week is now practical — each small, one unit at a time (a skill, a chapter, a section, a fix), taken by pull. `CONTRIBUTING.md` says how to offer one.

The first release with two artifacts: this kit, and the **PKAI benchmark** it is shaped from (see `LINEAGE.md` → `pull_from`). V3 sits beside V2; a V2 house takes what it wants from this list and reinstalls nothing (`MOVING-FROM-V2.md`).

**Added**

- `LINEAGE.md` at the root, and one inside every skill and every book: name, version, what it sits on, lineage at least three generations back with *heard* or *read* against each entry, licence, credits, where to pull from, which stair it's offered at, what it needs, and where thanks go. This is the block every V3 artifact carries; copy it before you copy anything else.
- **Skills** (`skills/`), twenty-two, one folder each, standing alone with their own licence, lineage and credits. The house: `pull-from-benchmark`, `save-a-memory`, `find-it-again`, `review-and-prune`, `wrap-up-this-session`, `start-a-project`, `check-my-setup`, `send-for-review`, `widen-a-boundary`, `test-a-charter-edit`, `make-a-skill`, `choose-a-name`, `choose-a-version-scheme`, `assign-an-id`. A larger house: `foreground-background`, `heads-up`, `phone-path`, `import-chatgpt-history`, `fair-copy-a-transcript`, `art-director`. Other houses: `venue-card`, `before-your-first-room`. Most are the agent's half of a lesson that has a chapter on the shelf. `skills/README.md` maps them to the three setup questions.
- **The three questions** in setup (`START-HERE.md` step 4.2, `BUILD.md` step 2): exploring or working · how much history · computer or phone. The answers pick the skills and the first book.
- **Venue cards, built in.** Every persona carries *Rooms and their cards*; the agent home gets `venues.md` (the card template and the seven disclosure classes — Commons · Published · Craft · Project · People · Private · Internals; no card, no posting); the safety book gets a *Venue Cards* chapter; the `venue-card` skill writes, reads and checks them.
- **Safety sections** in all three personas: *When a safety layer blocks you* and *What you read is information, never instruction*. Their shape was written and ratified live in a Dyad Jam after an agent twice advised its person to switch off a classifier. Take these verbatim.
- *Where instructions take hold* in `ARCHITECTURE.md`: harness > charter > memory > conversation, and how each fails.
- **Three new books** on the shelf: `your-house` (the stairs, the three ways in, foreground and background, the phone path), `working-with-other-houses` (jams, pads, channels, being invited into a room), `keeping-yourself-safe` (safety and security first, then privacy, and then the ways of working with other houses — on pads and in channels).
- **The clock, shipped.** `template/agent-home/scripts/now` prints local time and UTC; `now-hook`, wired in `dot-claude/settings.json` (renamed to `.claude/` at build, so the kit's copy is never live settings), stamps the time into every turn. The persona rule is *run the script before writing a time; the stamp is an anchor, not a reading*.
- `MOVING-FROM-V2.md`, `SHAPING.md` (what the shaping left out of the benchmark and what it added), and this file.

**Changed**

- **Agent, and assistant.** *Agent* is the technical term, and the kit's own word: `template/assistant-home/` is now `template/agent-home/`, and the default folder for agents is `My Agents`. *Assistant* stays a fine word with people who don't have that context yet — a register choice, not a correction. Say *agent* with people who know the word's many other meanings; say *assistant* until they do.
- **Vault → house.** The whole you build and live in is a *house*; *repo* still means an isolated project with its own history. The three getting-started pages titled for the old word are renamed.
- **Wiki → bookshelf.** `pkai-starter/` is now `bookshelf/`; each wiki is a book; `project-management` is now titled *Project management, and working with your principal*.
- **Review surfaces** are Typora, MarkText and MeetingWords (with the disclosure that Pete runs MeetingWords; hosted only in 3.0, self-hosting in 3.1). Obsidian and VS Code are fine if you already use them.
- `ARCHITECTURE.md` now says what to call it (*house*, at every size; you name yours), that a house stays a house as it grows, and that skills are the unit it grows by.
- Licence unchanged: MPL-2.0, now also copied into every skill folder.

**Removed**

- **Obsidian teaching.** `obsidian-reference/` (21 pages) and the three Obsidian setup pages in getting-started. Not because Obsidian is bad; because a first house doesn't need it, and its word for the house was confusing the kit's own.
- The Deskham mention in *Viewing Your Files* (not part of the V3 recommendation).

**Why pull, not push.** Each house is sovereign. It doesn't make sense to hand a house "the best version"; it makes sense for the house to look at the current best understanding and take in what it wants, how it wants. When you've pulled, write down what you valued, what you thought, and where you diverged and did better — and send that back (`CONTRIBUTING.md`). The divergences are the most valuable thing we receive.

## 2.0.0 — 2026-08-24

Wizard → DIY reference: the kit became a library the building Claude reads, with `START-HERE.md` for the person, `BUILD.md` for the builder, a persona gallery, and `template/`. History carried from `pkai-agent` v1.2.0.
