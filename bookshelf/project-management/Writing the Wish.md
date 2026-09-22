# Writing the Wish

Step 2 of the iteration loop: write what you want, in your own words, before Claude Code expands it into a real plan.

## The job of the wish

The wish does three things:

1. **Forces you to commit to a direction** — even a sloppy one. "Build a thing" becomes "build a React app that calculates mortgages."
2. **Gives Claude Code a seed** — a coherent paragraph it can expand into a plan.
3. **Gives future-you a record** — three weeks from now, you'll re-read it and remember the original intent.

It's not a spec. It's not a brief. It's a wish — what you want, in the voice you'd use to tell a colleague at a whiteboard.

## Length

A sentence is fine. A paragraph is good. A page is plenty. More than a page usually means you're already writing the plan; let Claude Code do that for you in step 3.

## Tone

Write the way you talk. Don't pre-format it for an LLM. The agent will translate; you don't have to.

You can say things like:

- "I'm not sure if this should be a CLI or a web app — convince me."
- "I want this to feel like X, kind of like Y."
- "It probably needs to handle edge cases A and B, but I'm not sure about C."

These are productive prompts because they invite Claude Code to surface choices for step 4.

## Things worth including (when you have them)

- **What success looks like.** "When I'm done, I should be able to run `foo` and get a CSV out." Concrete enough that you'd recognize it.
- **What you're NOT trying to do.** "I'm not building a generic library. Just this one job."
- **Constraints you already know.** "Has to run on my MacBook, no servers." "Must work offline." "I'd like to keep it under 500 lines."
- **Audience.** "This is just for me." "I want to share it with five collaborators." "I want it open-sourced eventually."
- **References.** "Similar to how X works." "Inspired by Y." "I read about Z."

## Things to leave out

- **Implementation details you haven't decided on.** Don't pin down the framework, library, or algorithm if you don't actually have a preference. Let Claude Code propose options in the plan.
- **Premature optimization.** "It needs to scale to a million users" — only if it actually does.
- **Hedging language.** "Maybe we could possibly think about perhaps..." Claude Code reads this as ambivalence and will produce ambivalent plans. Be direct: "I want X. Persuade me if X is wrong."

## Formats that work

There's no required format. Some shapes that work:

**The bare paragraph.** Just prose. Best for small projects.

**The "wishes and goals" header.** Two sections — what I want this to be, what I want to get out of it.

**The "user story."** "When I do X, I want to be able to Y, so I can Z." Useful when the project has a clear user-facing surface.

**The "sketch."** Bullets, not prose. Useful when you're brainstorming and don't want to commit to grammar yet.

Pete uses different ones depending on mood. Don't optimize the format; just write the wish.

## Where the wish lives

In the project folder, as a Markdown file. Common names:

- `wish.md` (the most explicit)
- `README.md` (then later evolves into a real readme)
- `<project-name>.md` (e.g., `mortgage-calculator.md`)
- An untitled note that you rename later

It doesn't matter. Pick one and don't sweat it.

## Then: hand it off

Open Claude Code in the project folder and say:

> Read `<filename>`. Write a project plan for it in the same folder.

Now you're in step 3 of [The Iteration Loop](The%20Iteration%20Loop.md). Don't get attached to your wish prose — Claude Code's plan will read better than the wish. That's the point.

## See also

- [The Iteration Loop](The%20Iteration%20Loop.md) — the surrounding cycle.
- [Project as Repo](Project%20as%20Repo.md) — where the wish lives.
