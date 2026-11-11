# The Iteration Loop

The core practice. Six steps, then round again; the rest of this book is detail under one of them.

## The loop

1. **Do most things in the context of a project.**
2. **When starting a project, write a sentence / paragraph / page** with wishes and goals. (See [Writing the Wish](Writing%20the%20Wish.md).)
3. **Have Claude Code write a real project plan.**
4. **Review and improve the project plan.**
5. **Execute next steps of the project.**
6. **Write a session log.** (See [Session Logs](Session%20Logs.md).)

Then iterate — usually back to step 5, sometimes back to step 4 if the plan needs to change.

## Step 1 — Project as container

Make a folder for the project. Usually that's a folder under `projects/` in your HQ; sometimes it's a repo of its own. (See [Project as Repo](Project%20as%20Repo.md), [Starting a New Project](Starting%20a%20New%20Project.md).)

The discipline is to not work outside a project. "Quick experiments" tend to leave debris that rots into the next project. A folder is cheap; make one.

## Step 2 — The wish

Write a note that says what you want. It goes at the top of the project's `README.md`, which sits beside a `<slug>.status.md` that says where things stand (your agent's `start-a-project` skill makes both). Be sloppy. A sentence is fine. A page is fine. Use your own voice; don't pre-edit it for an LLM audience.

The wish is for *both* of you — you're going to read it back to yourself in three weeks and remember why you started, and Claude Code is going to read it as the seed of step 3.

See [Writing the Wish](Writing%20the%20Wish.md) for what tends to land well in this note and what doesn't.

## Step 3 — Have Claude Code write a project plan

Tell your agent which project, in the session you already have:

> Read the README in `projects/<slug>/` in the HQ. Write a project plan there.

Claude Code will guess at things you didn't say. It's good at project plans even from sparse input. You'll get a coherent skeleton with steps, sub-steps, sometimes architectural choices.

## Step 4 — Review and improve

Read the plan. **Do not skip this step.** The plan is going to drive what Claude Code does next, and some of its guesses will be wrong. Every wrong guess you don't catch will compound.

Two ways to fix the plan:

- **Edit it directly.** You can write into the plan file yourself, change priorities, reorder steps, kill sections, add detail.
- **Ask Claude Code to revise it.** "Tweak it so it's X, not Y." "I made changes to the plan; make sure it's still coherent."

Iterate until the plan reads correctly. This is the highest-leverage moment in the whole loop. Pete has said, more than once: the times I do this, I'm really happy; the times I skip it, I'm really sad.

## Step 5 — Execute

Now have Claude Code do the work. Stay in the loop:

- Watch what it's doing.
- Check work when it stops to ask, in a few minutes or in 10-20 minutes.
- Reflect after the first hour, after the first four hours.
- Course-correct when it drifts.
- Don't let it improvise on the parts that matter; do let it improvise on the parts that don't.

This is where the intern analogy lands hardest. You wouldn't tell an intern "build this part of the business" and walk away. You'd say "if you were going to build this, what would you do? How would we do that differently? Let me check your work after an hour." Same here.

## Step 6 — Session log

Before you `/clear`, before you walk away, before you call it a day — ask Claude Code to write a session log.

The session log captures:

- What we tried.
- What worked.
- What didn't.
- What's open.
- What we're going to do next.

You and Claude Code are writing primarily to you, your future self, and the next Claude Code session, which will pick up the file with no other context. (See [Session Logs](Session%20Logs.md) for the file naming convention and a template.)

## Then — iterate

The plan is a living document. As you execute and learn, the plan improves, and the status file says where things stand. The session logs accumulate. At some point you finish, or pivot, or merge this project into another.

The iteration loop is small turns. Many small turns beats one big plan you commit to and try to push through. You will discover things in execution that you couldn't have predicted in planning. Update the plan when that happens.

## Two common failure modes

**Failure mode A: skip the plan.** You type your wish straight into the prompt and Claude Code starts building. It guesses 100 things, gets 30 wrong, ships you something that almost works. You burn a session debugging guesses you never sanctioned.

**Failure mode B: plan but never review.** Claude Code writes a plan, you read it for thirty seconds, and you tell it to execute. Same outcome as A.

The whole value of the loop is in step 4. Don't skip it.

## Where the loop lives

The loop applies whether you're using vanilla Claude Code or a personal agent like the one your house runs. The agent layer adds memory and personality, but the iteration loop runs underneath it the same way.

## See also

- [Writing the Wish](Writing%20the%20Wish.md) — step 2.
- [Session Logs](Session%20Logs.md) — step 6.
- [Anti-Patterns](Anti-Patterns.md) — what skipping the loop looks like.
