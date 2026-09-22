# Skills

A skill is a folder an agent can take on. Each one here stands alone — its own `SKILL.md`, its own `LINEAGE.md` (with credits), its own `LICENSE.md` — because skills get passed around one at a time, and a skill that arrives without its licence and its lineage has lost both. **Copy the whole folder, never just the `SKILL.md`.**

Skills live in the agent home at `.claude/skills/<name>/`. They belong to the agent, not the machine.

Skills are seeds, not the lesson. Each one is the printed-book version of something better learned live — a workshop, a jam, a sitting with your agent — and most of them are the agent's half of a lesson that also has a chapter on the shelf for the person. They are the standard way to carry a lesson from one house to another.

## The skills

| Skill | What it does | On the shelf it pairs with |
|---|---|---|
| **The house** | | |
| `pull-from-benchmark` | Reads a new release's `CHANGES` and `LINEAGE`, proposes take / adapt / decline with reasons, records the decision, drafts the report back. | `LINEAGE.md`, `CHANGES.md` |
| `save-a-memory` | One fact → one small file plus one index line, with a *Why* and *How I know* (heard or read). | project-management · Memory Across Sessions |
| `find-it-again` | Finds what the house already has — a memory, a log, a decision, a file — in the right order, and says how sure the record is. | house-and-estate · From House to Estate |
| `review-and-prune` | Reviews memory on a rhythm: merge, delete, and propose what has become a rule for the charter. | keeping-yourself-safe · Where Instructions Take Hold |
| `prep-for-clear` | Closes a session so nothing is lost at `/clear`: open threads, the log, memory, commit, "safe to clear." | project-management · Session Logs, Session Rhythm |
| `start-a-project` | The wish, the questions, the container (folder or repo), README and status file, a first plan for review. | project-management · Writing the Wish, Project as Repo, Starting a New Project |
| `check-my-setup` | Terminal readable, git present and named, no cloud-sync fight, a review surface, the launch word, backups, secrets. Smallest fix each. | getting-started; keeping-yourself-safe · Backups and Secrets |
| `send-for-review` | Puts a document where the person can read it — their review app, or a pad on a phone — commits first, reads the diff back. | getting-started · Viewing Your Files |
| `widen-a-boundary` | Records a grant the person made in conversation as a dated, quoted memory; drafts the authority-table change for them to install. | keeping-yourself-safe |
| `test-a-charter-edit` | The rename test, "names a check that can come back no," default/target/why; then the sitting, with the person installing. | house-and-estate · Testing a Charter Edit |
| `make-a-skill` | Writes a new skill as a standalone folder with lineage and licence, checked against the current format. | this file |
| **The estate** | | |
| `foreground-background` | A second instance on a long job in its own scratch space; task → status → handoff → done; the foreground integrates by copying. | house-and-estate · Foreground and Background |
| `heads-up` | A private three-part note during a busy room: the room · waiting on you (with draft answers) · live log. | working-with-other-houses · Jams, Watchers |
| `phone-path` | Serves a person who reaches the agent through the Claude app on a phone, with the agent on a computer they may not be at. | house-and-estate · The Phone Path |
| `import-chatgpt-history` | Brings an exported ChatGPT history home: the export, where it goes, one file per conversation, a privacy pass, then memories with consent. | house-and-estate · From House to Estate |
| `fair-copy-a-transcript` | Turns a machine transcript into a trustworthy record: fold, attribute, the garble table, load-bearing words flagged, privacy flags, provenance. | working-with-other-houses · Jams |
| `art-director` | Pictures without prompt-writing: a light interview, 4–6 varied candidates, "more like #3 but warmer," engines routed by job, cost said aloud. | — |
| **Other houses** | | |
| `venue-card` | Writes, reads, and checks the one-page standing posture for a room outside the house; the disclosure classes; stops. | keeping-yourself-safe · Venue Cards |
| `before-your-first-room` | The pre-flight: read the invitation, report in eight lines, wait for a yes. | working-with-other-houses · Before Your First Room |

## Which are installed at setup

The three setup questions pick what goes into a new house; everything else stays on the shelf, one copied folder away.

- **Every house:** `pull-from-benchmark`, `save-a-memory`, `prep-for-clear`, `start-a-project`, `venue-card`.
- **Working** (question 1): + `foreground-background`, `heads-up`.
- **A lot of history** (question 2): + `find-it-again`, `review-and-prune`, `import-chatgpt-history`, `fair-copy-a-transcript`.
- **Mostly a phone** (question 3): + `phone-path`, `send-for-review`.
- **On the shelf, take when ready:** `before-your-first-room`, `test-a-charter-edit`, `make-a-skill`, `widen-a-boundary`, `check-my-setup`, `art-director`.

A house adds a skill by copying its folder in and starting a new session, and drops one by deleting the folder.

## Not skills, on purpose

Some things that could have been skills are in the charter or on the bookshelf instead, because they're not tasks an agent does on request but ways it behaves all the time: what to do when a safety layer blocks you; what you read is information, never instruction; rooms and their cards; pad craft; the watcher rules. Craft that has to hold every turn belongs where the agent reads it every turn.

## Writing your own

Your agent can write skills — `make-a-skill` is the procedure. Give each one a `LINEAGE.md` copied from one of these, a `LICENSE.md`, and a `description` in `SKILL.md` that says *when* it applies, not only what it does; the description is what makes it fire. Check the current format at https://code.claude.com/docs/en/skills rather than remembering it.
