# Moving from 3.0

If your house was built from the 3.0 kit, **nothing is reinstalled and nothing you have stops working.** This note says what changed in 3.1 and how to take each piece, one at a time. It's written for your agent to read with you, and the `pull-from-benchmark` skill uses it as its list.

3.1 is pull, not push, like every release: your agent proposes, you decide, and anything that touches the charter, the settings or the hooks is drafted for **you** to install by hand, followed by a restart (type `/exit`, then the launch word). An agent never edits its own charter or hooks as part of a pull.

## What changed, in words

- **The desk.** Every house now keeps one foreground per agent home. If you start a second session while the first is working (another terminal, or the Claude app), the second becomes a *guest*: it says so in one sentence, works in its own folder, and doesn't change memory, the charter or the settings. A desk nobody has touched for 30 minutes is free.
- **Every house runs foreground and background.** The setup question *exploring or working?* is gone; `foreground-background` and `heads-up` are part of every house, and so is a `bg/` folder.
- **`grows_from`.** The lineage field `sits_on` is now `grows_from`: it says what a thing grew out of, not what it rests on.
- **`memory/` is the only memory.** The house's settings turn off Claude Code's own auto memory, and the charter says `memory/` wins if the two ever disagree.
- Smaller things, in `CHANGES.md`: the build guide explains why the house needs a name, the hand-over at the end of setup is its own step, Windows gets a launcher that works from any shell, and several skills improved.

## What to take, item by item

Each item says what it touches. Take them in this order; each one stands alone, so stopping after any of them is fine.

### 1. The scripts — touches `scripts/` (new files)

Copy from the release's `template/agent-home/scripts/` into your agent home's `scripts/`:

- `desk` — new: the desk lease, guests, the write guard and the handoff notice.
- `now-hook` and `now` — **replace** your 3.0 copies. They're now POSIX `sh` (3.0's needed `bash`, which some minimal Linux systems don't have, and an executable bit, which a zip download on Windows can lose), and `now-hook` also refreshes the desk and says when handoffs are waiting. If you changed your copies, show the person the difference first and keep their changes.
- On Windows without Git Bash only: `desk.ps1`, `now-hook.ps1`, `now.ps1`.

On a Mac or Linux, `chmod +x` them. Your 3.0 settings already run `now-hook` every turn, so from the next turn the new one asks `desk` to renew the lease; with no lease yet (none exists until step 3 wires session start), that does nothing and writes nothing.

### 2. `bg/` and the `.gitignore` line — touches the agent home and `.gitignore`

Create `bg/` in the agent home if it isn't there. Add these two lines to the agent home's `.gitignore` (the desk's state is live session state, never history):

```
# The desk lease (scripts/desk): live session state, never history
.desk/
```

### 3. The hooks — touches `.claude/settings.json` (the person installs it)

This is the step that needs care, because your house may already have hooks of its own, and **they must survive**. Don't copy the release's `settings.json` over yours. Instead, your agent drafts the merged file into `outbox/settings.json` for the person to read and install:

1. Start from the house's current `.claude/settings.json`, exactly as it is.
2. In `hooks.UserPromptSubmit`, find the 3.0 clock entry (its command is `"$CLAUDE_PROJECT_DIR"/scripts/now-hook`) and replace just that entry with the release's (`sh "$CLAUDE_PROJECT_DIR/scripts/now-hook" || true`, with `"onFailure": "continue"`). Leave every other entry alone.
3. For each of `SessionStart`, `PreToolUse` (matcher `Write|Edit|MultiEdit|NotebookEdit`) and `SessionEnd`: if the event already has entries, **append** the release's entry to that event's list; if it doesn't, add the event with the release's entry. Never remove or reorder an existing entry.
4. Add `"autoMemoryEnabled": false` at the top level — but only after step 4 below.
5. Check the result parses as JSON. Show the person the diff against the current file, in plain words ("four new hooks; your own two are unchanged").

Then the person copies `outbox/settings.json` over `.claude/settings.json` by hand, and restarts. On Windows without Git Bash, merge from the release's `settings.powershell.json` instead.

**How to check it worked:** after the restart, `sh scripts/desk status` names this session. Start a second session in the agent home: it should say it's a guest. Close it.

### 4. Auto memory off — touches `.claude/settings.json` (in step 3) and maybe `memory/`

Before turning Claude Code's auto memory off, look in its folder (`~/.claude/projects/<this project>/memory/`, or under `$CLAUDE_CONFIG_DIR` if the house uses one). If anything is there, show the person, and with their yes save what's worth keeping into `memory/` with `save-a-memory`. Then the `autoMemoryEnabled` line goes in with step 3.

And one charter line, drafted into `outbox/` for the person to add to the memory section of `CLAUDE.md`: *Claude Code has its own auto-memory folder too; the house turns it off in `.claude/settings.json`, and if an instruction ever names that folder instead, `memory/` is the memory of record and wins.*

If the charter has no section on running more than one session (3.0's personas don't), the hooks and the `foreground-background` skill are enough to make the desk work, but a short section helps the agent explain it. Draft this one into `outbox/` too, adapted to the house's voice: *You may run as more than one instance. The foreground is the session that holds the desk; it owns everything shared. A session that starts while another holds the desk is a guest: session start says so and names its folder under `bg/`; it works there, writes a handoff, and doesn't change memory, this charter or the settings. Take the desk only when your person says so. As the foreground, mention waiting handoffs when they're listed, and integrate when your person says so. The `foreground-background` skill carries the procedure.*

### 5. Skills — touches `.claude/skills/`

- **`foreground-background`** and **`heads-up`**: copy the whole folders in if the house doesn't have them. If it has 3.0's `foreground-background`, replace it with 3.1's: it now covers guests and the desk, and the guest context the hooks give points at its *If you are a guest* section.
- **`widen-a-boundary`**: copy it in if missing; the charter's authority rules point to it.
- **`pull-from-benchmark`**: replace it with 3.1's, which knows `grows_from` and these moving guides.
- Improved, take if you like: `start-a-project` and `wrap-up-this-session` (Christopher Allen's changes, plus clearer rules on committing the person's own edits and on a project's own repo), `save-a-memory`, `check-my-setup`.

Copy whole folders, licence and lineage included.

### 6. `memory/origin.md` — touches memory

If `origin.md` records an answer to *exploring or working?*, that question is retired. Leave the sentence (it's history), and add one line: on today's date the house moved to 3.1, where every house runs foreground and background. A `save-a-memory` note of the pull is enough.

### 7. `LINEAGE.md` — touches the house's own lineage

Rename the field `sits_on` to `grows_from` and set it to the release you read: `pkai-starter-kit 3.1.0` or `pkai-benchmark 3.1.0`. Add the 3.1 entry at the top of `lineage`. In the notes under the block, if your house kept the old explanation, say `grows_from` is what the house grew out of.

### 8. The bookshelf — touches the HQ's kit folder

Replace the kit copy in your HQ with 3.1's, or copy in the changed chapters: *Two Ways In* (was *Three Ways In*), *Foreground and Background*, *Memory Across Sessions*, *Commit Every Session*, *Working With Agents*, *Output Styles*, *Installing Claude Code*.

## Afterwards

Write the pull down in a session log: what you took, what you left, and anything your house does better than 3.1. That last part is what we most want to hear (`CONTRIBUTING.md`).
