# Using Claude Code With Your House

Your agent can do a lot more than git. It can read your files, help you write, organize your house, and answer questions about your content. Here's an overview of what you can ask it to do.

## Where you talk to it

You always work *through your agent*. In the Desktop app's Code tab, start or continue a session in your agent's environment, on its agent home. From there your agent goes to the work: your HQ, a project folder, a repo somewhere else on your computer. Just tell it where.

Don't start a session on a project folder or on your HQ to work there. A session started on any folder other than your agent home is plain Claude Code: it doesn't have your agent's charter, memory or skills, and doesn't know who you are. Start in your agent's environment and say "let's work in the garden project" instead.

## Managing Files

Your agent can see all the files in your house and work with them directly.

**Ask it about your house:**
- "What's in my HQ?"
- "Show me the structure of my house"
- "What's in my projects folder?"

**Create and edit files:**
- "Create a new page called Meeting Notes with today's date"
- "Add a section about next steps to the project plan"
- "Fix the typos in my latest note"

**Organize things:**
- "Move all the meeting notes into a Meetings folder"
- "Rename this file to something more descriptive"
- "Create a table of contents page that links to everything in this folder"

## Writing and Editing

Your agent can help you draft, revise, and improve your writing.

- "Help me write an outline for a blog post about [topic]"
- "Summarize the key points from my research notes"
- "Rewrite this paragraph to be clearer"
- "Check this page for consistency with the rest of my house"

## Git Operations

This is covered in detail in [Your First Commit](Your%20First%20Commit.md), but here's a quick reference:

- "Commit my changes" — save a checkpoint of your work on your computer
- "What's changed?" — see what's been modified
- "Show me the recent history" — see your recent commits

If you've added a remote such as GitHub, "Pull the latest" and "push" work too; your agent asks before pushing anywhere.

## Asking Questions

Your agent can read your files, so you can ask it questions about your own content:

- "What did I write about [topic] last week?"
- "Find all pages that mention [keyword]"
- "What are the open action items across my notes?"

## How It Works

When you type a request to your agent, here's what happens:

1. Claude reads your request
2. It looks at the relevant files in your house (and sometimes runs commands)
3. It responds with text, or makes the changes you asked for
4. If it changed any files, you'll see the edits the next time you open them in your Markdown editor

Your agent works with the files on your computer directly. Your house stays on your local disk; setup keeps both folders out of cloud-synced locations like iCloud and OneDrive. But whatever your agent reads in order to help you — a file, part of a file, the output of a command — goes to Anthropic as part of the conversation, the same as anything you type. That's how Claude can think about it. Keep that in mind for anything you'd rather Claude not see, and keep secrets out of files your agent reads.

## Tips for Getting Good Results

**Be specific.** "Update the project plan" is vague. "Add a new section to the project plan about the budget timeline" gives Claude something concrete to work with.

**Give context.** If you're working on a particular project or topic, say so. "In the research project, summarize my notes on renewable energy" is better than "summarize my notes."

**Review changes.** Your agent is helpful but not perfect. When it edits your files, glance at the changes to make sure they're what you wanted. You can always ask it to undo or revise.

**Tell your agent.** The more context your agent has, the better it understands your work. If you notice it making wrong assumptions, correct it and ask it to remember; it saves a memory. If something should become a permanent rule, your agent drafts a charter change for you to install by hand (see [Testing a Charter Edit](../your-house/Testing%20a%20Charter%20Edit.md)).

> [!tip]
> You can always ask your agent "what can you do?" or "help me with [vague goal]" and it will suggest specific approaches. It's a conversation — you don't need to know the exact right thing to say.
