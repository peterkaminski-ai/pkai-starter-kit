# Git Glossary

Quick-reference definitions for the terms you'll encounter when working with Git and GitHub. Arranged alphabetically.

---

**Branch** -- A parallel version of your project. Like making a copy to experiment on without affecting the main version. See [Branches](Branches.md).

**Clone** -- Downloading a copy of a GitHub repository to your computer for the first time. After cloning, you can pull and push to stay in sync.

**Commit** -- A saved snapshot of your project at a point in time. Like a save point in a video game. Each commit has a message describing what changed. See [What Is a Commit](What%20Is%20a%20Commit.md).

**Conflict** -- What happens when two people edit the same part of the same file. Git can't automatically decide which version to keep, so it asks you. See [When Things Go Wrong](When%20Things%20Go%20Wrong.md).

**Diff** -- A comparison showing what changed between two versions of a file. Lines added, lines removed, lines modified.

**Fork** -- Your own copy of someone else's GitHub repository. Used when you want to contribute to a project you don't have write access to.

**Git** -- A version control system that runs on your computer. It tracks changes to files, keeps a full history, and lets multiple people collaborate. See [What Is Version Control](What%20Is%20Version%20Control.md).

**GitHub** -- A website (github.com) that hosts Git repositories in the cloud. Provides backup, collaboration tools, and a web interface for browsing history. See [Git vs GitHub](Git%20vs%20GitHub.md).

**Hash** -- A unique ID for a commit (looks like a long string of letters and numbers, e.g., `a1b2c3d`). You rarely need to use these directly, but Claude Code might mention them.

**Main** -- The default branch in a Git repository. This is the "official" version of the project. (Older projects may call it "master" instead.)

**Merge** -- Combining changes from one branch into another. Git does this automatically when there are no conflicts.

**Pull** -- Downloading the latest changes from GitHub to your computer. The first thing you do when you sit down to work.

**Pull Request (PR)** -- A request to merge changes from one branch into another, with an opportunity for review and discussion. See [Working With Others](Working%20With%20Others.md).

**Push** -- Uploading your committed changes from your computer to GitHub. This is how your work becomes visible to others.

**Repo (Repository)** -- A project tracked by Git. It's a folder of files plus the complete history of every change. "Repo" is the short form everyone uses.

**Stage** -- Marking specific files to be included in the next commit. Claude Code handles this for you when you say "commit everything."

**Tag** -- A named label you put on a specific commit, like a bookmark. Useful for marking milestones (e.g., "v1.0", "pre-demo").

**Tracked / Untracked** -- A tracked file is one Git knows about (it's been committed before). An untracked file is new -- Git sees it exists but hasn't been told to watch it yet.
