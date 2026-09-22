---
name: send-for-review
description: Puts a document in front of the person on the surface they can actually read it — opens it in their review app on the computer, or puts it on a shared pad and gives the link when they're on a phone — commits the draft first if the house keeps git so their edits show as a clean diff, and reads their changes back afterward. Use when the person says "let me see it", "open that", "send it to me", "put it where I can read it", "I'm on my phone", when you've written more than a screen of markdown, or when a draft needs the person's markup before anything else happens.
license: MPL-2.0
---

# Send for review

Work in documents, not chat. A draft that scrolls past in the terminal isn't reviewed; a draft the person opens in their own review surface, marks up, and hands back is. This skill is the hand-off, and the read-back.

## Which surface

Ask once, then remember (`save-a-memory`): what does the person read markdown in? On a computer: Typora, MarkText, Obsidian, VS Code, whatever they already use. On a phone: a shared pad — MeetingWords or its like — because a phone can't open a file on the computer. The kit's *Viewing Your Files* chapter is the list if they have nothing yet.

## Steps

1. **Commit first**, if the house keeps git: the draft as it stands, with a message that says what it is. This is what makes the person's edits visible afterward as a clean diff instead of a guess. (No git: copy the file to `<name>.before.md` beside it, and delete the copy after the read-back.)
2. **Put it in front of them.**
   - **On the computer:** open the file in their review app (`open` on Mac, `start` on Windows, or the app's own command). Say the path in one line, in case the window opened behind something.
   - **On a phone:** put the document on a shared pad and give the link. Say in one line what the pad is for and that the link is shareable — anything on it should be fit to share. Never put anything on a pad that the house's disclosure rules keep home.
   - **Long document, short screen:** offer the part that matters first, then the link.
3. **Say what you'd like from them**, in one sentence: "mark anything up; I'll read the diff." Then wait. Don't narrate while they read.
4. **Read back the changes.** On the computer: `git diff` against the commit from step 1 (or against the `.before` copy). On a pad: fetch the pad and diff it against what you posted. Summarize what they changed in a few lines — the substance, not the line numbers — and act on it. Where an edit works on more than one axis, say so; small edits often carry more than they show.
5. **Commit the reviewed version**, message noting it's post-review. Remove any `.before` copy.

## Small courtesies that matter

- Their edits carry weight: don't "fix" a change back to your wording.
- If they changed a fact you know to be wrong, say so once, plainly, and let them decide.
- On a phone, keep everything else short while they're reading; the reply thread is their only window.

## What this skill never does

- Put private material on a shared surface to make review easier.
- Overwrite the person's edits, or reflow their formatting.
- Send the document anywhere but to the person.
