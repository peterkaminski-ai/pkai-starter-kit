# Basic Markdown

Markdown is a simple way to format text using plain characters. You don't need to learn much — here's enough to get going.

## Headers

Use `#` symbols at the start of a line. More `#` symbols = smaller header.

```markdown
# Big Header
## Medium Header
### Small Header
```

## Bold and Italic

```markdown
**bold text**
*italic text*
***bold and italic***
```

Which renders as: **bold text**, *italic text*, ***bold and italic***.

## Lists

**Bullet lists** — use `-` or `*` at the start of each line:

```markdown
- First item
- Second item
- Third item
```

**Numbered lists** — use numbers followed by a period:

```markdown
1. First step
2. Second step
3. Third step
```

**Indented lists** — use two or four spaces before the dash to create sub-items:

```markdown
- Main item
  - Sub-item
  - Another sub-item
- Next main item
```

## Links

**Web links:**

```markdown
[Link text](https://example.com)
```

**Links to other pages in your house:**

```markdown
[Page Name](Page%20Name.md)
```

Use the file name, with `%20` in place of spaces, the same way this book links between its own pages.

## Blockquotes

Use `>` at the start of a line:

```markdown
> This is a blockquote. It's useful for quoting someone
> or setting text apart from the rest of the page.
```

## Callout Blocks

This book uses callout blocks for tips, warnings, and notes — you'll see them throughout:

```markdown
> [!tip]
> This is a helpful tip.

> [!warning]
> Watch out for this.

> [!note]
> Here's some additional context.
```

## Code

For inline code, use backticks: `` `like this` ``.

For blocks of code, use triple backticks:

````markdown
```
This is a code block.
It preserves formatting exactly as typed.
```
````

## Horizontal Rule

Three dashes on their own line create a divider:

```markdown
---
```

## That's It

You now know enough Markdown to write effectively. You'll pick up more tricks over time, but headers, lists, links, and bold/italic cover 90% of what you'll use day to day.

> [!tip]
> You can always ask Claude Code "how do I format [something] in Markdown?" and it will show you the syntax.
