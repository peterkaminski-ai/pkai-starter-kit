# Search

Obsidian's built-in Search plugin provides full-text search across all notes in the vault, with operators for precise filtering.

## Opening search

- Click the magnifying glass in the left sidebar
- Or press **Ctrl/Cmd + Shift + F**
- **Tip:** Select text first, then press the shortcut to search for that text immediately

## Search operators

| Operator | Example | What it does |
|----------|---------|--------------|
| `path:` | `path:Course Journals` | Search only in a specific folder |
| `file:` | `file:Iris` | Search by filename |
| `tag:` | `tag:folder-readme` | Search by tag |
| `line:` | `line:(Claude Code)` | Match entire phrase on a single line |
| `-` | `-path:Templates` | Exclude results |

You can combine operators: `path:"Course Journals" tag:folder-readme` finds notes with that tag inside that folder.

## Tips

- Search results can be copied to the clipboard
- Searches can be bookmarked for quick re-use (see [Core Plugins Overview](Core%20Plugins%20Overview.md) under Bookmarks)
- For exploring connections rather than searching for text, try [Backlinks and Graph View](Backlinks%20and%20Graph%20View.md)

## Beyond built-in search

For structured queries over frontmatter properties, Obsidian Bases let you build filtered table views without code. For programmatic queries, you can also treat your vault as a lightweight database using Python or any scripting language -- every note with frontmatter is a record, every field is a column. Claude Code can run these queries for you directly.

## See also

- [Properties and Frontmatter](Properties%20and%20Frontmatter.md) -- structured metadata that search can target
- [Keyboard Shortcuts](Keyboard%20Shortcuts.md) -- search-related shortcuts
