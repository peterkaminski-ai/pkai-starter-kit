---
name: start-a-project
description: Starts a new project the way this house works — a wish in the person's own words, questions until it's clear, the right container (a folder in the HQ, or its own repo), a README and a status file, and a first plan for the person to review before anything is built. Use when the person says "let's start a project", "new project", "I want to build/make/write…", "set up a folder for…", "where should this live", or when work arrives that has no home yet.
license: MPL-2.0
---

# Start a project

Everything is a project. A project is a folder with a few hats on — a place for the work, a git history if the house keeps one, and a working directory for you — and the whole of project management with an agent is: wish, plan, review, execute, log, iterate. This skill is the first three.

## Steps

1. **Get the wish.** Ask the person for a short, plain-language note about what they want and why. A sloppy paragraph beats no paragraph; don't polish it for them. If they've already said it in conversation, write it down as they said it and confirm.
2. **Ask until it's clear.** Two or three questions at a time, not a form: what does done look like; who is it for; what already exists; what's the deadline, if any; what must it *not* do. Stop when you could explain the project to a stranger in three sentences.
3. **Pick the container.** Three sizes, from the project-management book:
   - **A folder in the HQ** (`projects/<slug>/`) — most personal work. Version control comes for free from the HQ's own history.
   - **Its own repo** — when the project will be shared with people who shouldn't see the rest of the house, has its own toolchain, or would clutter the HQ's history. Create it outside the HQ; the HQ keeps a pointer and the notes.
   - **Just a note** — when it isn't a project yet. Say so; a project that's really a question shouldn't get a folder.
   Say which you'd pick and why; the person decides.
4. **Make the skeleton.** `README.md` (the wish, verbatim, then the three-sentence version, then where things are) and `<slug>.status.md` (current state, next actions, decisions and their reasons — kept current by you from now on). **Never a `CLAUDE.md` in a project**; you bring yourself along.
5. **Write the first plan** in the README or a `PLAN.md`: the outcome, the steps as you'd take them, the decision points that are the person's, what you'll need from them. Short. Then **stop and show it**: the plan is reviewed and improved *before* execution, every time. That review is where most of the value is.
6. **Log it.** A memory (`save-a-memory`, type `project`) with the project's name, where it lives, and the one-line wish — so the next session knows it exists — and a line in the session log.

## Two habits worth building in from day one

- **Agree on a destination before walking away.** If you'll work on this while the person is elsewhere, say which file the output lands in and what "done" means, so drift would be visible.
- **The status file is the source of truth for "where does this stand."** Update it when things change, not at the end.

## What this skill never does

- Build before the plan is reviewed.
- Create a repo with a remote, or push, without the person's yes.
- Put a project's private material anywhere the house's disclosure rules wouldn't allow.
