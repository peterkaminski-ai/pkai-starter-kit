# Branches

Branches are one of Git's most powerful features, but you may not need them right away. This page explains what they are so the concept isn't mysterious, and shows you when they're useful.

## What is a branch?

Imagine your project is a notebook. The **main branch** is the official version -- the one everyone reads and trusts. A branch is like tearing out a few pages, working on them separately, and then taping them back in when you're done.

More precisely: a branch is a parallel version of your project. Changes you make on a branch don't affect the main version until you explicitly merge them back in.

Every Git project starts with one branch, usually called **main**. When you work without thinking about branches, you're working on main. That's fine for most everyday work.

## When would I use a branch?

Branches are useful when:

- **You want to experiment** without risk. Trying a big reorganization? Do it on a branch. If it doesn't work out, you can throw the branch away and the main version is untouched.
- **You're working on something that takes a while** and you don't want half-finished work visible to others on the main branch.
- **Multiple people are working on different things** and you want to keep the changes separate until they're each ready.
- **You want someone to review your work** before it goes into the main version. This is the basis of "pull requests," which we cover in [Working With Others](Working%20With%20Others.md).

## How branches work

```
main:        A ── B ── C ── D ── E ── F
                       │              ^
                       │              │
my-branch:             └── X ── Y ───┘ (merge)
```

In this picture:
- The main branch has commits A through F.
- At commit C, someone created a branch and made commits X and Y on it.
- At commit F, the branch was merged back into main, bringing X and Y's changes along.

The key point: while you're working on your branch, other people can keep working on main. When you merge, Git combines both sets of changes.

## Using branches with Claude Code

You don't need to remember branch commands. Just tell Claude Code what you want:

- **"Create a branch called redesign"** -- makes a new branch and switches to it.
- **"What branch am I on?"** -- tells you where you are.
- **"Switch to the main branch"** -- goes back to main.
- **"Merge my branch into main"** -- combines your branch changes back into the main version.
- **"Merge to main, commit and push, delete the branch if it's safe"** -- wraps up a branch neatly: merges, uploads, and cleans up.

## Do I have to use branches?

No. For many collaborative projects -- especially when the team is small and working on different files -- everyone can work directly on the main branch. You pull, you edit, you commit and push. That's the workflow described in [The Daily Cycle](The%20Daily%20Cycle.md), and it works well.

Branches become more valuable as projects get more complex, or when you want a review step before changes go live. You'll know when you need them.

## Next

[When Things Go Wrong](When%20Things%20Go%20Wrong.md) -- what to do when Git gives you an error.
