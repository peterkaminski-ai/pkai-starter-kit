# Plan for v4.0.0-rc.3

*Plan version 1.0 · 2026-11-10 · status: in progress, not yet published. Built from [run 1](../runs/run-1-2026-11-10-mac.md).*

Ideas for rc.3 or later are welcome: [open an issue](https://github.com/peterkaminski-ai/pkai-starter-kit/issues), open a pull request, or email kaminski@istori.com or freya@istori.com.

## Decisions
1. **Your HQ goes in Documents by default.** The agent's own folder stays at the top of your home folder. If Documents is synced (iCloud's "Desktop & Documents" on a Mac, or OneDrive's folder backup on Windows), the agent says so and puts the HQ at the top of your home folder instead. The setup check also notices if sync gets turned on later.
2. **No more "which skills" questions.** Every new agent gets the history and phone skills.
3. **Chief of Staff is the recommended temperament,** with Companion's warmth. Choosing a temperament as a real design conversation is planned for 4.1.
4. **Names come with a little story,** in this order: your name; then what your *house* is (you, your projects and knowledge, and your agent or agents); then the house's name; then your agent's name.
5. **The hand-over goes one way.** The setup session helps you make your agent's environment and finishes everything else. Then you start your agent and say hello, and only then come back once to archive the setup session.
6. **A stable preview link.** A standing `v4-preview` pre-release will always hold the newest release candidate's zip.

## Changes
- **START-HERE:** the HQ in Documents; where to download the app; first-launch notes for a new Mac; signing in to the desktop app; the new hand-over.
- **BUILD:** you can always type your own answer; ask again on a hedged waiver; drop the two skills questions; plain words for git and the small helper scripts; tell people Apple's window may be hidden behind the app and how to find it; Typora's cost stated plainly, TextEdit or Notepad as the fallback; names in the new order; the exact steps and labels for making the agent's environment, renaming and archiving a session; the one-way hand-over.
- **The three personas:** a missing "git is installing" note is normal, and never stops the agent's first wake-up.
- **REQUIREMENTS:** folders, per decision 1.
- **check-my-setup:** warn if the HQ's folder starts syncing.

## Not in rc.3
- Windows is still untested; the first Windows run is next.
- A blended temperament and a temperament design conversation (4.1).
