---
name: assign-an-id
description: Gives a thing a stable identifier that survives renames, moves, and status changes — choosing the right shape (a founding-date-plus-letters handle for household items, a short random ID for public posts, a namespaced number for registry entries others cite, date-plus-serial for logs, a themed codename for instances), checking for collisions, and writing it where it can be found and never changed. Use when the person says "give this an ID", "we need a stable handle for these", "how do we refer to this thing", "number these", when a board, registry, list, or log is being set up, or when a name has changed and something needs to keep pointing at the thing.
license: MPL-2.0
---

# Assign an ID

A name can change; an ID can't. When a thing needs to be pointed at across renames, moves, and months — in conversation, in feedback, in a grep — it needs an identifier: assigned once, immutable, short enough to say and type, unambiguous in the place it lives, and carrying nothing that can go stale.

## The properties, in order

1. **Assigned once, never changed.** The ID survives a rename, a move to another folder, a change of status, even archival. If it can change, it's a name, not an ID.
2. **Short and sayable.** Someone will read it aloud on a call and type it into a search. Six to eight characters is the sweet spot for a handle; a UUID is for machines only.
3. **Meaning that can't go stale.** A founding date is fine — it's history, not state. A status, an owner, a position in a list, a category: never — those change, and an ID that encodes them lies later.
4. **Collision-checked at assignment.** Two things with one ID is worse than none. Check the space it lives in; reroll or increment on collision; the *earlier* thing keeps the ID.
5. **Findable.** The ID appears in the thing's file name or front matter, in its status file, and wherever the thing is listed. Grep for it and you find the thing.

## Shapes, and when each fits

- **Household items — projects, board items, instances, standing threads:** **`yymmdd-aa`** — the founding date (close is good enough; use the first commit, the status file, or the sweep date when nobody knows) plus two random lowercase letters, rerolled on collision. Sayable ("two-six-oh-nine-two-two, r-z"), sortable by age, 676 per day, and the date tells a reader roughly how old the thing is without pretending to be exact.
- **Public posts and shared things where the date shouldn't leak:** a short random ID of letters and digits (six to eight characters, no ambiguous ones: drop `0/O`, `1/l/I`), with no meaning at all. The URL is the address; the ID is the handle.
- **Registry entries other houses will cite:** a namespace prefix and a number — `PREFIX-21` — where the prefix says whose registry and the number is issued once and never reused or renumbered, even when an entry is withdrawn. Entries are versioned and immutable; a citation names the entry and its version. This is the shape identifiers take the moment they cross a house boundary: without a namespace, two houses' `#21` collide; without immutability, a citation stops meaning what it meant.
- **Logs and sessions:** date plus serial plus a topic — `2026-09-22-003-topic` — because order within the day matters and the topic makes the list readable.
- **Instances and one-off jobs:** a **codename** from a themed pool: the next unused name, computed from what's already used (never a stored pointer, which drifts), never reused, retired forever once drawn. A codename is an ID that people enjoy saying.
- **Versions:** see `choose-a-version-scheme`; a version is an ID for a state of a thing.

## Steps

1. **Name the space** the ID must be unique in: this board, this house, this registry, the world.
2. **Pick the shape** from the list, by who reads it and whether it crosses a boundary.
3. **Check for collision** in that space; assign; write it into the thing (front matter or file name) and into the list it belongs on.
4. **Say it back** to the person once — "this is `260922-rz` from now on" — so it enters conversation.
5. **When renaming the thing**, the ID stays; when merging two things, one ID survives and the other is recorded as retired, never freed.

## What this skill never does

- Change or reuse an ID, or free one by deleting a thing.
- Encode status, owner, or order in an ID.
- Issue sequential integers in a space with more than one writer; that's a collision waiting to happen.
- Use a UUID where a person has to say it.
