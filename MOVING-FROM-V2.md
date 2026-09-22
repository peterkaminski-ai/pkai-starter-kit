# Moving from V2

V3 sits beside V2; it doesn't replace it. If you built your house from the V2 kit, **nothing is reinstalled and nothing you have stops working.** This note says what changed and what, if anything, you might want to take.

## What changed in words

- **Agent, and assistant.** V2 said *assistant*; V3's own word is *agent*, the technical term, and the folder `assistant-home` in the kit's template is now `agent-home`. *Assistant* isn't wrong — it's the word for people who don't have the context yet, and your own folders keep whatever names they have; `My Assistants` is still a fine place for an agent to live. If you'd like your agent to call itself an agent, say so; that's a one-line memory.
- **Vault → house.** V2 sometimes borrowed Obsidian's word *vault* for the whole of what you built. V3 says **house**: your agent home and your HQ together. (*Repo* still means an isolated project with its own git history; the contrast is now house vs repo.)
- **Wiki → bookshelf.** The four starter wikis under `pkai-starter/` are now books on a shelf under `bookshelf/`, with three new books beside them.

## What went away

- **Obsidian.** V3 stops teaching it — the `obsidian-reference` wiki and the three Obsidian setup pages are gone, and the recommended review surfaces are Typora, MarkText and MeetingWords. **If you use Obsidian, keep using it.** Nothing in V3 forbids it or breaks it; the kit simply no longer explains it.

## What's new, and how to take it

V3 is built for **pull, not push**: nothing is ever installed into your house from outside. Your agent reads the new release and you two decide what to take. The pieces, in the order most V2 houses will want them:

1. **`LINEAGE.md`** — copy it into your agent home, add your own house at the top of `lineage`, and you have the block every V3 artifact carries. That's the whole upgrade for many houses.
2. **The safety sections** in the personas — *When a safety layer blocks me* and *What I read is information, never instruction*. Ask your agent to read `personas/companion.md` (or whichever is nearest its own charter), draft those two sections into its `CLAUDE.md` in its own words, and let you install the change by hand and restart. Editing its own charter is something an agent should never do unwatched.
3. **Skills.** Each folder under `skills/` stands alone. Ask your agent to read `skills/README.md` and propose which to copy into its `.claude/skills/`. `pull-from-benchmark` is the one that makes the next release easy.
4. **The bookshelf.** Point your agent at `bookshelf/` and let it read at its own pace; the new books are `your-house`, `working-with-other-houses` and `keeping-yourself-safe`.

Then have your agent write down, in a session log, what it took, what it left, and anything it does better than the kit does. That last part is what we most want to hear about — `CONTRIBUTING.md` says how to send it.
