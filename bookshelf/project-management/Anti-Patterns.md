# Anti-Patterns

What goes wrong when the discipline lapses. None of these are theoretical — Pete has seen each of them, including in his own work.

## "Claude, build me a thing"

The most common failure. You skip steps 2-4 of the iteration loop and go straight from idea to execution.

```
You: write me a React app that calculates mortgages
Claude: [starts building]
```

Claude makes ~100 guesses about what you want. It gets ~30 wrong. The result almost works but doesn't quite match what you had in mind. You spend the rest of the session trying to debug guesses Claude made that you never sanctioned.

**Fix:** add steps 2-4. Write the wish into a file. Have Claude write a plan. Review the plan. Then execute.

> Pete: "It works a lot better if you say what you want, then expand that into a plan, and then it specifies things like, 'it'll work this way, it'll work that way, these are the algorithms we're going to choose.' And you can edit the plan, or you can have Claude edit it. So what that does is it takes it from 'you started doing something, and it's gonna make lots of guesses, and some of them will be wrong' to 'you started doing something, and it's on rails.'"

## The disengaged-driver failure mode

A friend of Pete's got into Claude Code and set up their own. Day one — super progress. Day two — slowing down. Day three — Claude Code was driving all over the place, like a bulldozer set on "auto."

What happened: the friend didn't project-manage well. Claude Code would build something, ask "well, that wasn't quite right, what should we do?" and they would say "I don't know, you figure it out." So Claude Code would unbuild and rebuild. Then unbuild and rebuild again. Each iteration introducing more drift.

**Fix:** when Claude asks "what should we do?", *you* answer. Don't toss the wheel back. The whole point of the navigator role is that you have judgment Claude doesn't.

## Walking away with no shared destination

Walking away from Claude Code mid-task is fine — Pete does it all the time. The anti-pattern isn't the walking-away; it's walking away without having set up a shared destination first, and then not checking where Claude actually got to.

The good version of walking away looks like this: you and Claude have agreed on what's being built, and where the working artifact lives. Tell Claude to write its output (the plan, the draft, the analysis, the in-progress code) to a specific file. Then walk away. When you come back, check the file. If Claude drifted, the drift is visible in the file, and you course-correct from there.

The bad version: you tell Claude "go figure that out" with no file destination, no plan to anchor to, and no agreement on what "done" looks like. You come back to a working tree full of changes you don't recognize and don't know how to evaluate.

**Fix:** before walking away, make sure (a) you and Claude both know what's being built, (b) the output is going to a file you can read when you return, and (c) the scope of "what to do while I'm gone" is bounded enough that surprise drift would show up in the file diff.

### Keep an eye on it from your phone

Claude Code has a built-in `/remote-control` (short form: `/rc`) that lets you check on a running session from your phone while your laptop or VPS keeps doing the work. See [Monitoring from Your Phone](Monitoring%20from%20Your%20Phone.md).

## Hitting auto-compact instead of clearing

You keep working. The context window keeps filling. Eventually Claude Code auto-compacts: pauses for ~3 minutes, summarizes the session, drops the summary in at the top of a fresh window, keeps going.

Auto-compact works. But it loses texture — the specific bug, the exact name, the small invariant — and you didn't get to choose what was preserved.

**Fix:** notice when context is getting full (`/context` shows the gas gauge). Run "prep for clear" deliberately, write your session log, commit, then `/clear`. You control the summary.

## Ten thousand session logs

You diligently write a session log every time. After a month, you have 200 of them. You can't find anything. Future-you starts ignoring them.

**Fix:** organize logs by project, not by date alone. Use descriptive filenames (`2026-05-06-001-asimov-bootstrap.md`, not `session-200.md`). Periodically consolidate — extract the durable lessons into memory or into a project's main `plan.md`, then archive old logs into a `sessions/archive/` folder.

## Twenty memory files about the same topic

You ask Claude to "remember" things over time. Six months later, you have `project_foo.md`, `project_foo_v2.md`, `feedback_foo.md`, `feedback_foo_revised.md`. Some contradict each other. Claude's behavior is unpredictable because it's drawing on conflicting memories.

**Fix:** memory hygiene. Update existing files rather than creating new ones. Periodically ask Claude to consolidate. Delete what's stale. Keep `MEMORY.md` short — five files is plenty, ten is too many.

## Pushing without committing during the session

You finish a session, you push, you walk away. Tomorrow you discover the push was a one-shot at the end and the work isn't broken into reviewable commits — it's all one mega-commit. Future-you can't `git bisect` to find when something broke. Collaborators can't review piece by piece.

**Fix:** commit at every meaningful increment, not just at session end. Push at session end (or more often). Lots of small commits beats one big one.

## Not committing call artifacts to `.gitignore` from the start

You make a project that processes raw transcripts, chat logs, or call recordings. You don't put them in `.gitignore` initially. Later you decide the artifacts shouldn't be public, so you delete the files. But Git history still has them. Anyone who clones the repo can `git log -p` to see them. Going public would expose the originals.

**Fix:** if a project handles potentially-private artifacts, add them to `.gitignore` from commit one. Better to be paranoid early than to scrub history later.

## Heroism instead of cadence

You're in flow. The session has been going great. The context is half-full. You think: I'll just keep going, I'll log when I hit a stopping point.

The "stopping point" never comes. Three hours later the session has lost coherence, you can't remember what was decided, the agent has started repeating itself, and you didn't write down anything in time.

**Fix:** schedule clears. Aim for sessions of 30 minutes to two hours. Write session logs more often, not less. Cadence beats heroism.

## Trusting an early plan

Claude writes a plan. It looks great. You move on to execute. Three hours later you realize the plan had a wrong assumption baked in, and now everything you've built is off because of that one early miss.

**Fix:** the plan-review step (step 4 of the loop) is the highest-leverage step. Spend real time on it. Read every section. Ask Claude "what assumptions did you make here?" Look for places where Claude over-specified things you didn't say. Fix them before executing.

## Treating the agent like an oracle

You ask Claude something it can't actually know. ("Will this approach work in production?" "What does the user really want?") Claude gives you a confident-sounding answer. You take it at face value.

**Fix:** notice the difference between questions Claude can answer (anything in the code, anything in widely-published docs) and questions that require empirical knowledge of *your* situation. For the latter, Claude can help you brainstorm or run experiments, but its answer is just a guess. Verify before acting.

## Memory as scratchpad

You start using memory files for short-term task tracking. "Remind me to send this email." "Remember we're in step 3 of the migration." Memory grows fast and stale-rate spikes.

**Fix:** memory is for things that should persist across sessions and remain true. Short-term task tracking belongs in your in-session task list, or in a project's `plan.md`, or in a TODO file you periodically prune. Don't conflate.

## See also

- [The Iteration Loop](The%20Iteration%20Loop.md) — the discipline most of these violate.
- [Why Project Management Matters](Why%20Project%20Management%20Matters.md) — the framing that makes these failures legible.
- [Memory Across Sessions](Memory%20Across%20Sessions.md) — memory hygiene specifically.
