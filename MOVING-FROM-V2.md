# Moving from V2

V3 sits beside V2; it doesn't replace it. If you built your house from the V2 kit, **nothing is reinstalled and nothing you have stops working.** This note says what changed and what, if anything, you might want to take. A V2 house can go straight to the newest release: take the V3 pieces below, then the 3.1 pieces in `MOVING-FROM-V3.0.md` (step 5 below says which).

## What changed in words

- **Agent, and assistant.** V2 said *assistant*; V3's own word is *agent*, the technical term, and the folder `assistant-home` in the kit's template is now `agent-home`. *Assistant* isn't wrong — it's the word for people who don't have the context yet, and your own folders keep whatever names they have; `My Assistants` is still a fine place for an agent to live. If you'd like your agent to call itself an agent, say so; that's a one-line memory.
- **Vault → house.** V2 sometimes borrowed Obsidian's word *vault* for the whole of what you built. V3 says **house**: your agent home and your HQ together. (*Repo* still means an isolated project with its own git history; the contrast is now house vs repo.)
- **Wiki → bookshelf.** The four starter wikis under `pkai-starter/` are now books on a shelf under `bookshelf/`, with three new books beside them.

## What went away

- **Obsidian.** V3 stops teaching it — the `obsidian-reference` wiki and the three Obsidian setup pages are gone, and the recommended review surfaces are Typora, MarkText and MeetingWords. **If you use Obsidian, keep using it.** Nothing in V3 forbids it or breaks it; the kit simply no longer explains it.

## What's new, and how to take it

V3 is built for **pull, not push**: nothing is ever installed into your house from outside. Your agent reads the new release and you two decide what to take. The pieces, in the order most V2 houses will want them:

1. **`LINEAGE.md`** — copy it into your agent home, set `name` to your agent's, `version` to your own, and `grows_from` to the release you're taking (for example `pkai-starter-kit 3.1.0`), and add your house at the top of `lineage`. That's the block every V3 artifact carries. (Releases before 3.1 called `grows_from` `sits_on`; same field.)
2. **The safety sections** in the personas — *When a safety layer blocks me* and *What I read is information, never instruction*. Ask your agent to read `personas/companion.md` (or whichever is nearest its own charter), draft those two sections into its `CLAUDE.md` in its own words, and let you install the change by hand and restart. Editing its own charter is something an agent should never do unwatched.
3. **Skills.** Each folder under `skills/` stands alone. Ask your agent to read `skills/README.md` and propose which to copy into its `.claude/skills/`. `pull-from-benchmark` is the one that makes the next release easy.
4. **The bookshelf.** Point your agent at `bookshelf/` and let it read at its own pace; the new books are `your-house`, `working-with-other-houses` and `keeping-yourself-safe`.

5. **The 3.1 pieces: the desk, the clock, and foreground and background in every house.** Follow `MOVING-FROM-V3.0.md`, with three differences for a V2 house:
   - **Scripts (its step 1):** a V2 house has no `scripts/` folder; create it and copy in `now`, `now-hook` and `desk` (plus the `.ps1` twins on Windows without Git Bash). The clock (`now`, and the time stamped into every turn) is new to you too.
   - **Hooks (its step 3):** a V2 house usually has no `.claude/settings.json`. If it has none, your agent drafts the release's `template/agent-home/dot-claude/settings.json` into `outbox/` as it is, for you to install as `.claude/settings.json`. If the house does have one (you or a tool may have added hooks or permissions), merge exactly as that step says, so nothing of yours is lost. Either way you install it by hand and restart.
   - **Lineage and origin (its steps 6 and 7):** a V2 `origin.md` has no exploring/working answer to retire, and step 1 above already gave you a `LINEAGE.md` with `grows_from`.

Then have your agent write down, in a session log, what it took, what it left, and anything it does better than the kit does. That last part is what we most want to hear about — `CONTRIBUTING.md` says how to send it.
