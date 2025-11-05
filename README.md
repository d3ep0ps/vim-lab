# d3ep0ps Vim Survival Lab

Welcome to the hands-on lab for the d3ep0ps blog series. This lab is designed to give you the essential, "no-panic" skills you need to survive and be productive in `vi` or `vim`.

As we discussed in [Mastering Text Editing on Unix](https://medium.com/@d3ep0ps/mastering-text-editing-on-unix-from-vi-to-vim-and-beyond-xxxxxxxxx), knowing `vi` isn't about nostalgia; it's about survival. It's the one editor that's guaranteed to be on *any* Unix-like system you SSH into.

This lab will build your muscle memory. No mouse, no GUI. Just you and the terminal.

## 🚀 Your Mission

Your goal is to perform a series of common system administration tasks on the files in the `practice_files/` directory.

**Do not use any other editor.** Open, edit, and save every file using only `vi` or `vim`.

### How to Start

1.  **Clone this repository:**
    ```bash
    git clone https://github.com/d3ep0ps/vim-lab.git
    ```
    

2.  **Navigate into the lab directory:**
    ```bash
    cd vim-lab
    ```
3.  **Ensure you have the practice files:**
    Make sure the `practice_files/` directory exists and contains:
    * `mission1_sshd_config.txt`
    * `mission2_hosts.txt`
    * `mission3_nginx_config.txt`
    (If you downloaded the `README.md` separately, you'll need to create this directory and these files manually as described in the previous response).

4.  **Start with Mission 1.**

---

### 🎯 Mission 1: The Basics (Movement & Editing)

This mission simulates the most common task you'll face: changing a single configuration value on a server.

1.  **Open the file:**
    ```bash
    vi practice_files/mission1_sshd_config.txt
    ```

2.  **Your Task:** Your server is being scanned on port 22. You need to change the SSH port to `5757`.
    * Use `j` and `k` to move down and up. Find the line `#Port 22`.
    * Use `h` and `l` to move left and right. Move your cursor to the `#`.
    * Press `x` to delete the `#` character (uncommenting the line).
    * Move your cursor over the `2` in `22`.
    * Press `i` to enter **Insert Mode**.
    * Type `5757`.
    * Press `Esc` to return to **Normal Mode**.
    * Type `:wq` and press `Enter` to save and quit.

**Congratulations!** You've just performed the most fundamental and common sysadmin task in `vi`.

---

### 🎯 Mission 2: Copy, Paste, Delete, and... Panic?

This mission teaches you how to manipulate text and, most importantly, how to get out of trouble.

1.  **Open the file:**
    ```bash
    vi practice_files/mission2_hosts.txt
    ```
2.  **Your Task:** Clean up this messy `hosts` file.
    * The line `192.168.1.50 old-server.local` is obsolete. Move your cursor to that line.
    * Press `dd` to delete the entire line.
    * The `test-server` entry is in the wrong place. Move your cursor to the line `10.0.0.10 test-server`.
    * Press `yy` to "yank" (copy) the entire line.
    * Move your cursor to the line `127.0.0.1 localhost`.
    * Press `p` to "put" (paste) the copied line *below* your cursor.
    * **Oh no!** That's not right. Let's undo it. Press `u` to undo your last action.
    * Now, press `Esc` (just to be sure you're in Normal Mode).
    * Type `:q!` and press `Enter` to **quit without saving** your changes.

**Congratulations!** You've learned how to move text, delete lines, and—most critically—how to abort a change you didn't mean to make.

---

### 🎯 Mission 3: Search and Replace

This mission is about speed. You need to change all instances of a word in a file.

1.  **Open the file:**
    ```bash
    vi practice_files/mission3_nginx_config.txt
    ```
2.  **Your Task:** You are migrating a website. You must replace all instances of `old-app.com` with `new-app.d3ep0ps.com`.
    * **First, let's search:** In Normal Mode, type `/old-app.com` and press `Enter`. Your cursor will jump to the first match.
    * Press `n` to jump to the *next* match, and `N` to jump to the *previous* one.
    * **Now, let's replace:** Return to the top of the file by typing `gg`.
    * Type `:%s/old-app.com/new-app.d3ep0ps.com/g` and press `Enter`.
        * `:` enters Command Mode.
        * `%` means "on all lines."
        * `s` means "substitute."
        * `/old/new/` is the pattern.
        * `g` means "global" (replace all on each line, not just the first).
    * All instances have been replaced at once.
    * Type `:wq` to save and quit.

---

### 🎓 Bonus Mission: The `sed` Connection

As we discussed in the article, the command `:%s/old/new/g` is actually `ex`, the editor inside `vi`. You can use the same logic from your terminal with `sed`.

**Your Task:** Revert the changes to `mission3_nginx_config.txt` *without opening it.*

```bash
# This command performs the substitution "in-place"
# Note: On BSD/macOS, you might need: sed -i '' 's/new-app.d3ep0ps.com/old-app.com/g'
sed -i 's/new-app.d3ep0ps.com/old-app.com/g' practice_files/mission3_nginx_config.txt
```