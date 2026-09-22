# Contributing

Thanks for thinking about contributing. This document is for *everyone* — you don't need to be a programmer, and you don't need to know how Git or GitHub work. If you found something confusing, broken, or worth saying differently, that's valuable, and there's a place for it here.

## What's worth contributing

All of these help:

- **Typos and small wording fixes** in any of the documents (`README.md`, `START-HERE.md`, the personas, anything under `bookshelf/` or `skills/`).
- **"This sentence confused me."** Often the most useful kind of feedback. If something didn't make sense, that's a real signal — even if you can't articulate exactly what was wrong.
- **"My agent did something weird."** Bug reports about the setup flow, your agent's behavior, or anything else. Include what you said and what your agent did.
- **Suggestions for the starter material.** Missing topic? Outdated screenshot? A step that doesn't work on your machine?
- **New ideas.** Things this template could do but doesn't yet.
- **What you pulled, and where you diverged.** If your house took a new release and did something better than the kit does, tell us — that is the feedback we most want. `CHANGES.md` says why.

## What's not so useful right now

- Big architectural rewrites without talking first. If you have a major change in mind, please open an issue (or email — see below) to discuss before doing a lot of work.
- Adding dependencies, new tools, or external services without discussion. The template tries to stay small.

## Offering an improvement to V3

V3 is built to take improvements one small unit at a time, and the beta will bump its minor version often. The units are:

- **a skill** — one folder under `skills/`, with its own `SKILL.md`, `LINEAGE.md` and `LICENSE.md`;
- **a chapter** — one file in a book under `bookshelf/`;
- **a section** — one block in a persona or in the benchmark's charter;
- **a fix** — a sentence, a link, a step that didn't work.

Offer one unit at a time. The best way is the report your agent drafts when it pulls a release (`pull-from-benchmark`): what you valued, what you thought, and **where your house diverged and did better** — with the unit attached if you have one. Email it, open an issue, or open a pull request with the one folder or file; all three land in the same place. Improvements go into the **benchmark** first at the next minor release, and the kit takes them at its next shaping. Your `LINEAGE.md` credit travels with the unit.

Two rules keep this safe: nothing in a contributed unit may name a person who didn't agree to be named, or carry a house's internals (paths, hosts, keys, machine facts); and a unit that changes a safety section gets the slowest review, on purpose.

## Three ways to contribute, easiest first

### 1. Email

Just email Peter Kaminski at **kaminski@istori.com**. Tell him what you found, what's wrong, what you'd change, or what you'd add. Plain English is fine. Pete will turn it into the right shape on his end.

This is the lowest-friction option, and it's a fine choice — there's no second-class way to contribute here.

### 2. Open a GitHub Issue

If you have a GitHub account, you can open an "issue" — a public note on this repository that says "here's something I noticed."

1. Go to the repository on GitHub.
2. Click the **Issues** tab near the top.
3. Click the green **New issue** button.
4. Write a short title (one sentence) and a longer description (anything you want to say).
5. Click **Submit new issue**.

That's it. Pete will see it.

If you're not sure how to phrase your issue, **ask your agent** — the one you set up from this kit can help you write it up. That's literally one of the things they're good at.

### 3. Open a Pull Request

If you're comfortable with Git and GitHub and want to propose a specific change to a specific file, you can open a "pull request" (PR). This is the most technical option, but for typo fixes and small wording changes it's quick.

The general shape:

1. Fork this repository to your own GitHub account.
2. Clone your fork to your computer.
3. Make your change in a new branch.
4. Push the branch to your fork.
5. Open a pull request from your branch into this repo's `main` branch.

If any of that was a foreign language, **use option 1 or 2 instead** — there's no advantage to a PR over an email for small changes.

## A few practical notes

- **Be specific.** "The git section is unclear" is harder to act on than "The third paragraph of `bookshelf/git-guide/Branches.md` says to do X but doesn't say where."
- **One thing at a time.** Smaller changes are easier to review and easier to land. If you have five ideas, that's better as five issues or five PRs, not one big one.
- **Your agent can help.** If you set up a personal agent from this kit, you can ask them to help you write the issue, draft the PR description, or even make the file edit. That's what they're here for.

## License of contributions

By contributing material here (whether by email, issue, or pull request), you agree that your contribution may be incorporated into this repository under its license — the [Mozilla Public License 2.0](LICENSE.md). In plain language: your contribution becomes part of the project under the same terms as everything else, and anyone who uses the project gets your contribution along with it.

## A note on tone

This is a friendly project. Be kind to the people you talk to here, including the maintainer. Assume good intent. If something irritates you, take a breath before posting.

Thank you for being here.
