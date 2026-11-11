# Run 2 — 2026-11-10, Windows

- **Release:** v4.0.0-rc.3
- **Machine:** a fresh Windows 11 virtual machine (ARM64), no git, no OneDrive backup of Documents.
- **Tester:** the kit's author, playing a newcomer, with one observer.
- **Result:** setup finished and the new agent said hello. The tester scored it about 80–85%.

## What went well
- The Code tab started without Git for Windows, and `winget` was there to install it.
- The HQ landed in Documents, and both folders got version history, with a placeholder name and email.
- After an app restart, the clock and desk helpers ran under Git Bash. A second session came up as a guest, as designed.
- When a safety check stopped the builder, it quoted the message, didn't retry, and offered narrow ways forward.

## Where it got stuck or felt clumsy
- **The kit wouldn't unzip** in the app's temporary folder (no folder had been chosen). The long path hit Windows' 260-character limit.
- **Setup guide and skills list disagreed** about the history and phone skills, so the builder had to ask.
- **Helpers:** the builder tested them by hand, a safety check stopped it, and the person was left with a technical choice.
- **The clock** labelled the local time "UTC". The offset was right; the zone name was wrong.
- **The environment:** the steps added the HQ as a second folder, which makes it unclear which `CLAUDE.md` gets read.
- **Wording:** "say hi" should be "type hi"; "hover over this session" didn't say where; the order of creating the environment and not yet using it was confusing.
- **Sign-in** sends an email, so a newcomer may need a second device, and the waiting screen has no obvious way back.

## What changes because of it
See `CHANGES.md` on the `v4` branch, under 4.0.0-rc.4, for what got fixed; the sign-in waiting screen is the app's own. rc.4 itself hasn't had a test run.

Did your setup go differently? We'd like to hear: [open an issue](https://github.com/peterkaminski-ai/pkai-starter-kit/issues), open a pull request, or email kaminski@istori.com or freya@istori.com.
