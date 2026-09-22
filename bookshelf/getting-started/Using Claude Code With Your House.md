# Using Claude Code With Your House

Claude Code can do a lot more than just Git operations. It can read your files, help you write, organize your house, and answer questions about your content. Here's an overview of what you can ask it to do.

## Managing Files

Claude Code can see all the files in your house and work with them directly.

**Ask it about your house:**
- "What files are in the current directory?"
- "Show me the structure of this house"
- "What's in the Projects folder?"

**Create and edit files:**
- "Create a new page called Meeting Notes with today's date"
- "Add a section about next steps to the project plan"
- "Fix the typos in my latest note"

**Organize things:**
- "Move all the meeting notes into a Meetings folder"
- "Rename this file to something more descriptive"
- "Create a table of contents page that links to everything in this folder"

## Writing and Editing

Claude Code can help you draft, revise, and improve your writing.

- "Help me write an outline for a blog post about [topic]"
- "Summarize the key points from my research notes"
- "Rewrite this paragraph to be clearer"
- "Check this page for consistency with the rest of my house"

## Git Operations

This is covered in detail in [Your First Commit](Your%20First%20Commit.md), but here's a quick reference:

- "Pull the latest" — download new changes from GitHub
- "Commit and push" — save and upload your work
- "What's changed?" — see what's been modified
- "What's new from other people?" — pull and summarize recent activity

## Asking Questions

Claude Code has read your files, so you can ask it questions about your own content:

- "What did I write about [topic] last week?"
- "Find all pages that mention [keyword]"
- "What are the open action items across my notes?"

## How It Works

When you type a request to Claude Code, here's what happens:

1. Claude reads your request
2. It looks at the relevant files in your house (and sometimes runs commands)
3. It responds with text, or makes the changes you asked for
4. If it changed any files, you'll see the edits the next time you open them in your Markdown editor

Claude Code works with the files on your computer directly. It doesn't upload your house to the cloud — it reads files from your local disk. The only time your files leave your computer is when you explicitly push to GitHub.

## Tips for Getting Good Results

**Be specific.** "Update the project plan" is vague. "Add a new section to the project plan about the budget timeline" gives Claude something concrete to work with.

**Give context.** If you're working on a particular project or topic, say so. "In the Research folder, summarize my notes on renewable energy" is better than "summarize my notes."

**Review changes.** Claude Code is helpful but not perfect. When it edits your files, glance at the changes to make sure they're what you wanted. You can always ask it to undo or revise.

**Use CLAUDE.md.** The more context you put in your house's CLAUDE.md file, the better Claude Code understands your project. If you notice it making wrong assumptions, add a note to CLAUDE.md.

> [!tip]
> You can always ask Claude Code "what can you do?" or "help me with [vague goal]" and it will suggest specific approaches. It's a conversation — you don't need to know the exact right thing to say.
