# Sessions on Desktop and Phone

A **session** is one conversation with your agent. Most people start with one, and one is plenty for a while. Within a few weeks you'll probably have a few, maybe one per subject, and you'll start checking on your agent from your phone. This chapter is about that stage: what the Desktop app's sidebar is telling you, what happens when you quit or restart the app, and what your phone can and can't do.

It's written for people who aren't technical. If you're reading it outside the PKAI starter kit, everything here applies to any agent running in the Code tab of the Claude Desktop app.

## The sidebar's dots

The list of sessions on the left of the Desktop app is the sidebar. A small dot next to a session tells you what it's doing:

| Dot | What you see under the name | What it means |
|---|---|---|
| grey | "Working" | Your agent is in the middle of a reply. |
| blue | the start of its last reply | It finished while you were looking at something else. Opening the session clears the dot. |
| orange | "Waiting", and the topic | It asked you a question, or asked permission, and is waiting for you. |
| none | the start of its last reply, or "Idle" | Nothing is happening that needs you. |

Orange is the one to watch. An agent waiting on you does nothing until you answer.

One catch: **no dot doesn't always mean nothing is running.** An agent can start a long job in the background, end its reply, and show no dot while the job carries on. If you want to know, open the session and look for **Background tasks** in the panel on the right, or ask your agent.

## When you have more than one session

- **Name them.** A session's name comes from what you first said in it, which is rarely what you'd call it. Rename your agent's main session so it's easy to find, on your computer and on your phone. You can also pin it to the top.
- **Archive, don't delete.** When you're done with a session, archive it. Archiving keeps the conversation, and you can bring it back. Deleting can't be undone.
- **One agent, several conversations.** Several sessions can be the same agent, one per subject. Your agent's memory lives in its folder, not in any one session, so a new session still knows you. It works best with one session going at a time. If you open a second while the first is still busy, a kit agent says so and works as a guest, without changing its memory. That's fine, and nothing to fix.
- **The sidebar's order is a setting,** not a ranking. You can group sessions by folder or by environment, and sort them by date. If they seem to jump around, that's the sort order at work, not something going wrong.

## Quitting and restarting the app

You'll quit the Desktop app now and then: to install an update, to restart your computer, or because something seems stuck. Quitting ends what's running, but **it never loses your conversations.** Every session is back in the sidebar when you reopen the app.

If something is still going when you quit, the app warns you. There are two warnings, and **neither one says which session it means**. It just gives a number. To find them, look in the sidebar for sessions marked "Working".

**"Claude is still working."** A session is in the middle of a reply. You get three choices:

- **Wait for Claude** is the one to pick. The window closes, the reply finishes in the background, and then the app quits by itself.
- **Quit anyway** stops the reply partway, and the half-written part is lost. When you reopen the app, that session **starts its reply over by itself**, and you'll see a note in it saying the app reopened and asked Claude to continue. That's normal, and it's why Wait is usually the better choice. If several sessions were interrupted, they all start up again at once.
- **Cancel** keeps the app open.

**"Background commands are still running."** No reply is in progress, but some session has a job running in the background. Quitting stops the job. If it matters, cancel, open the session, and stop it yourself from **Background tasks**, or ask your agent to stop it.

Two things the app doesn't warn you about:

- **A question waiting for your answer.** If your agent asked you something and you quit without answering, the question is dropped. It won't ask again on its own, so answer first, or tell it what you decided when you come back.
- **Sleep.** If your computer sleeps, everything pauses, including anything you were following from your phone. The app has a setting to keep your computer awake while your agent works.

When you reopen the app, it opens on a blank new session. Your conversations are all still in the sidebar; pick the one you want.

**If the warning seems wrong.** Now and then the app says something is still working when no session shows "Working". If you've checked and nothing is, it's safe to quit anyway.

## On your phone

Your phone reaches your agent through **Remote Control**. The agent still runs on your computer, and the phone is a window into it. In the Claude app on your phone, tap **Code** to see your sessions. A session from your computer shows a small computer icon, with a green dot while it's online.
<!-- VERIFY(phone): the Code tab and the computer icon, as the docs describe them -->

**What works on the phone:**

- Reading what your agent is doing and has done, as it happens.
- Replying, and answering its questions and permission prompts.
- Renaming a session (type `/rename` and the new name).
- Stopping a background job that your agent started.

**What's thinner on the phone than on your computer:**

- **You only see sessions that have Remote Control turned on.** Each session has its own Remote Control switch on your computer, in the panel on the right. There's also a setting to turn it on for every new session (Settings → Claude Code → *Connect new sessions to Remote Control*). Turn it on if you want your phone to always find your agent. It doesn't change sessions that are already open; switch those on one at a time.
- **Start new sessions in one of your agents' folders, never in a cloud environment.** On your phone, **New session**, then pick your computer, then one of your agents' folders. The same screen also offers **cloud environments**, marked with a small cloud icon and often named **Default**. Those start a session on Anthropic's computers, without your files or your agent, so don't use them. The phone offers only the folders on your computer's Remote Control list (see *Two lists you keep the same, by hand*, below), so put your agents' folders on it.
- **Housekeeping is a computer job.** Archiving and sorting are done in the Desktop app. Archiving a session there takes it off your phone too.
<!-- VERIFY(phone): whether the phone app can archive a Remote Control session -->
- **Quitting the Desktop app, or letting the computer sleep, takes your sessions off the phone** until the app is open again.

**"Sign in again to verify your device."** Every so often, the phone or another computer asks you to sign in again before it shows a session. That's a safety check (Anthropic asks again once a sign-in is more than about 18 hours old), and you can say yes to it.

## How your phone names your agent

Your phone labels each session with the **GitHub repository** its folder belongs to, if it has one, like `yourname/youragent · main`. A session in a folder with no GitHub repository is labelled simply "Remote Control".

That has two consequences:

- **If your agent's folder isn't on GitHub, every session looks alike on the phone**, apart from its name. Renaming your main session matters even more.
- **If two agents share one folder, the phone can't tell them apart.** Agents in separate folders under one parent folder are fine, as long as you list each agent's own folder and not the parent. The app folds every folder under a listed parent into that parent's single entry, so listing the parent hides the agents inside it.

So the arrangement that makes sense on the phone is the same one that makes sense on your computer:

- **Each agent gets its own folder**, never inside another agent's folder. Agents may share a parent folder; then list each agent's folder, never the parent. The PKAI starter kit sets this up for you.
- **If you back an agent up to GitHub**, give it its own private repository, named after the agent. That's the name the phone shows.
- **Start sessions in the agent's own folder,** and name the main one.

## Two lists you keep the same, by hand

The Desktop app and the phone each keep their own list of where your agents live, and nothing keeps them in step for you:

- **Environments**, in the Desktop app: one per agent, set on that agent's own folder. That's how the Desktop app starts a session as that agent.
- **Folders**, under Settings → Code → Remote Control: the folders your phone can start a session in. The phone knows only this list.

Make them match: one environment and one folder for each agent, the same folder in both, and nothing else in either.

**Setting up the Folders list:**

1. In the Desktop app, open **Settings → Code → Remote Control** (well down the page) and turn on **Connect new sessions to Remote Control**.
2. Open the folder list. The app fills it with every folder you've used Claude Code in, so it's often long. **Remove every folder that isn't an agent's own folder.** Removing a folder only takes it off the list; your files are untouched, and **Add folder…** brings it back.
3. **Add folder…** for each agent, choosing the folder where that agent's `CLAUDE.md` lives, and **pin** it.
4. On your phone, **New session**, then your computer: each agent now appears by its folder name.

**Privacy, worth knowing:** with Remote Control on, the app sends your computer's name and each listed folder's name, path, git branch and repository address to Anthropic, so the phone can show them. A short, pruned list sends less.
<!-- VERIFY(phone): the privacy wording, against the setting's own text -->

## If something looks wrong

- **A session isn't on your phone.** Its Remote Control switch is off, the Desktop app is closed, or the computer is asleep.
- **Two sessions on your phone look the same.** Rename them on your computer, or with `/rename` on the phone.
- **The app won't quit and says something is working.** Look for "Working" in the sidebar. If you find one, choose Wait for Claude. If you don't find one, quit anyway.
- **After a restart, a session is busy that you didn't ask anything of.** It's finishing a reply the restart interrupted. Let it finish.

Related chapters: [First Day in Desktop](First%20Day%20in%20Desktop.md) for your first hour in the app; [Monitoring from Your Phone](../project-management/Monitoring%20from%20Your%20Phone.md) for checking on long jobs from your phone; [The Phone Path](../your-house/The%20Phone%20Path.md) for a person who reaches their agent only through a phone.
