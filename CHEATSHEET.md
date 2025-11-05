# Vim "No-Panic" Survival Cheatsheet

This isn't every command. This is just what you need to survive.

## The Core Rhythm

The `vi` "rhythm" is:
1.  You are in **Normal Mode** (for moving and commands).
2.  You press `i` (or `a`, `o`) to enter **Insert Mode**.
3.  You type your text.
4.  You press `Esc` to return to **Normal Mode**.
5.  You type a command (like `:wq`) to save and quit.

**Always press `Esc` if you're lost. It will return you to Normal Mode.**

## Getting Out (The Panic Buttons)

* `:q!` - Quit **without** saving. (The "abandon ship" command).
* `:wq` - **Write** (save) and **quit**.
* `:w` - **Write** (save) but don't quit.
* `:q` - **Quit** (will fail if you have unsaved changes).

## Navigation (Normal Mode)

* `h` - left
* `j` - down
* `k` - up
* `l` - right
* `gg` - Go to the top of the file
* `G` - Go to the bottom of the file
* `w` - Jump to the start of the next word
* `b` - Jump to the start of the previous word
* `0` - Jump to the start of the line
* `$` - Jump to the end of the line

## Editing (Normal Mode)

* `i` - **Insert** text before the cursor
* `a` - **Append** text after the cursor
* `o` - Open a new line *below* and enter Insert Mode
* `O` - Open a new line *above* and enter Insert Mode
* `x` - Delete the character under the cursor
* `dd` - Delete the entire line
* `dw` - Delete from the cursor to the end of the word
* `u` - **Undo**

## Copy & Paste (Normal Mode)

* `yy` - **Yank** (copy) the current line
* `p` - **Put** (paste) the copied text *after* the cursor

## Search & Replace (Command Mode)

* `/search-term` - Search for `search-term`. Press `n` for next match, `N` for previous.
* `:%s/old/new/g` - Search and replace all instances of `old` with `new` in the entire file.