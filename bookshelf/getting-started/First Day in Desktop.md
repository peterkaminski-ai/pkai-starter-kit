# First Day in Desktop

Your house is built, and you'll meet your agent in the Claude Desktop app. Here are the small things that trip people up in the first hour. Every one of them has happened to someone already, so if one happens to you, you're in good company.

## The Code tab, not Chat

The Desktop app has more than one tab, and the Code tab is small and easy to miss. Your agent lives in the Code tab. Anywhere else in the app you're talking to the Claude chatbot, which is useful, but it isn't your agent and doesn't know your house.

## Your agent's environment

Your agent has one environment in the app, set up on its agent home (the folder named `<AgentName> (agent)` at the top of your home folder). Keep it selected when you start a session. Don't make extra environments for the same agent; one is all it needs.
<!-- VERIFY(cold-start): the Desktop app's word for an environment, and where you pick it when starting a session -->

## Folder access

Your agent works in two folders: its agent home and your HQ. Your agent can sometimes read a folder before the app's file pane shows it to you. If you can't see a folder there, grant that folder to your agent's environment, or use "Show in Finder" to look at it outside the app.
<!-- VERIFY(cold-start): the exact label for granting a second folder; where "Show in Finder" appears, and its Windows wording -->

## One live session per agent

Your agent works best with one session going at a time.

- If you see no sessions, click **+ New**.
- If you see one, use it; type `/clear` in it to start fresh.
<!-- VERIFY(cold-start): that slash commands the kit names (`/clear`, `/context`, `/plan`) work when typed in the Code tab -->
- If you see two, tell one of them you're shutting it down, and archive it.

If you do open a second session while the first is still going, it notices and becomes a guest by itself: it tells you so in one sentence and works without changing your agent's memory or charter. That's fine, and nothing to fix.

Archive sessions you're done with; don't delete them. Archiving keeps the history, and deleting can't be undone.

## Remote Control

Remote Control lets you continue a session from the Claude app on your phone. It's a toggle in the Desktop app, and quitting the app turns it off. There's a setting to start every session with Remote Control on, if you want your phone to always find your agent.
<!-- VERIFY(cold-start): where the Remote Control toggle is, and the name of the setting that turns it on for every session -->

## Keep Computer Awake

The app can keep your computer awake while your agent works, which is useful for long jobs and for reaching your agent from your phone. Turn it off before you unplug and travel, so your laptop can sleep in your bag.
<!-- VERIFY(cold-start): the exact label and location of the Keep Computer Awake control -->

## Permission prompts

Your agent asks before it does certain things. Read each prompt before you click. If one doesn't make sense, say no and ask your agent to explain it; your agent can explain any prompt. If you'd rather approve each action yourself for a while, switch to Manual mode in the app's mode picker (or press Shift+Tab). [Permissions Questions](Permissions%20Questions.md) has the long version.

## Notifications

The app can send you notifications. Turn them on; if they annoy you, turn them off again. Either is fine.
<!-- VERIFY(cold-start): where notifications are turned on and off -->

## Sessions

You can rename a session and pin it, so your agent's main session is easy to find in the list.

## Log retention

The app keeps session history for 30 days by default. That's a setting, if you want it kept longer or shorter. Your agent's own record (its memory and session logs) lives in its agent home and isn't affected.
<!-- VERIFY(cold-start): that the Desktop app keeps session history for 30 days by default, and where that setting is -->

## Connectors

The app may offer to connect your Google account or other accounts. Hold off until you and your agent have talked about what it should be able to see. Connecting an account is easy to do and worth doing on purpose.

## The look

If you came from using Claude Code in a terminal, the Desktop app's look takes a few days to get used to. That's normal.

## Claude app Projects are not your HQ's projects

The Claude app has a feature called *Projects*. It's a different thing from a project folder in your HQ. When your agent talks about a project, it means a folder under your HQ's `projects/`.
