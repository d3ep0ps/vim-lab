You are right. The `CHEATSHEET.md` I provided earlier was a more comprehensive, intermediate-level document, while the one you just posted is the original, beginner-focused "No-Panic" version.

To align them, we should **keep the structure and simplicity of the "No-Panic" version** as the base, but **add the new intermediate concepts** (registers, macros, splits) in a way that doesn't overwhelm the reader. We'll call it an "Extended" cheatsheet to reflect the new sections.

Here is the aligned `CHEATSHEET.md` that merges the two.

---

# d3ep0ps Extended Vim/Neovim Cheatsheet

> "Vim is a modal editor. Don't type to write; type to act."

---

## 🧠 The Core Rhythm: Modes

1.  You are in **Normal Mode** (Esc) for navigation and commands.
2.  You press a key like `i` to enter **Insert Mode**.
3.  You type your text.
4.  You press **Esc** to return to Normal Mode.

**If you are ever lost, press `Esc` to return to Normal Mode.**

| Mode | How to Enter | What it's for |
| :--- | :--- | :--- |
| **Normal** | Press `Esc` | Navigation, deleting, copying, running commands. |
| **Insert** | Press `i`, `a`, `o` | Typing text like a regular editor. |
| **Visual** | Press `v`, `V`, `Ctrl-v`| Selecting blocks of text. |
| **Command** | Press `:` | Saving, quitting, search & replace. |

---

## 💾 Getting Out (Command Mode)

| Command | Action | Notes |
| :--- | :--- | :--- |
| `:q!` | Quit **without** saving | The "panic button." Discards changes. |
| `:wq` | **Write** (save) and **Quit** | The standard exit. |
| `:w` | **Write** (save) only | Keeps the file open. |

---

## 🧭 Navigation (Normal Mode)

**Do not use arrow keys.** Build the muscle memory.

### Basic Movement
| Key | Movement |
| :--- | :--- |
| `h` `j` `k` `l` | Left, Down, Up, Right |

### Moving Faster
| Key | Movement |
| :--- | :--- |
| `w` / `b` | Jump forward/backward by start of word. |
| `0` (zero) | Jump to start of line. |
| `$` | Jump to end of line. |
| `gg` | Jump to first line of file. |
| `G` (shift-g) | Jump to last line of file. |
| `50G` | Jump to line 50. |
| `%` | Jump to matching bracket `{`, `[`, `(`. Crucial for configs. |

---

## ✏️ Editing (Normal to Insert Mode)

| Key | Action |
| :--- | :--- |
| `i` | **I**nsert *before* the cursor. |
| `a` | **A**ppend *after* the cursor. |
| `o` | Open a new line *below* cursor and insert. |
| `O` (shift-o) | Open a new line *above* cursor and insert. |
| `r` | **R**eplace single character under cursor (stays in Normal mode). |

---

## ✂️ Cutting, Copying, and Pasting

### Basic Operators
| Command | Action |
| :--- | :--- |
| `x` | Delete character under cursor. |
| `dd` | Delete (cut) entire line. |
| `dw` | Delete to next word. |
| `d$` | Delete from cursor to end of line. |
| `yy` | **Yank** (copy) entire line. |
| `p` | **P**aste after cursor. |
| `u` | **Undo** last change. |
| `Ctrl-r` | **Redo**. |

### 📦 Registers (Multiple Clipboards)
Don't lose text when you delete something else. Use named registers.

| Command | Action |
| :--- | :--- |
| `"ayy` | Yank line into register `a`. |
| `"bdd` | Delete line into register `b`. |
| `"ap` | Paste contents of register `a`. |

---

## 🔍 Search and Replace

| Command | Action |
| :--- | :--- |
| `/pattern` | Search forward for "pattern". Press `n` for next match. |
| `:%s/old/new/g` | Replace **all** instances of "old" with "new" in the entire file. |
| `:%s/old/new/gc` | Same as above, but **c**onfirm each replacement. |

---

## 👁️ Visual Mode (Selecting Text)

| Key | Action |
| :--- | :--- |
| `v` | Start character-based selection. Move to select. |
| `V` (shift-v) | Start line-based selection. |
| `Ctrl-v` | Start block-visual selection (select rectangular columns). |

*Once selected, press `d` to delete, `y` to copy, or `>` / `<` to indent/dedent.*

---

## ⚡ Power Moves (Intermediate)

### Macros (Recording actions)
For repeating complex edits on multiple lines.
1.  `qq` - Start recording into register `q`.
2.  Perform your series of edits once.
3.  `q` - Stop recording.
4.  `50@q` - Replay macro `q` 50 times.

### Splits (Windows)
| Command | Action |
| :--- | :--- |
| `:sp file.txt` | Horizontal split. |
| `:vsp file.txt` | Vertical split. |
| `Ctrl-w` then `h/j/k/l`| Move cursor between windows. |

### Marks (Bookmarks)
| Command | Action |
| :--- | :--- |
| `ma` | Set mark `a` at current location. |
| `'a` | Jump back to the line of mark `a`. |