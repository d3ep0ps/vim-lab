-- ====================================================================
-- d3ep0ps Neovim Starter Config (Lua)
--
-- Place this file at ~/.config/nvim/init.lua
-- ====================================================================

local opt = vim.opt -- Helper variable for setting options

-- --- The Basics ---
-- Note: Neovim is 'nocompatible' by default.
vim.cmd('filetype plugin indent on') -- Enable filetype detection

-- --- UI & Visuals ---
vim.cmd('syntax on')      -- Enable syntax highlighting
opt.number = true         -- Show line numbers
-- opt.relativenumber = true -- Uncomment for relative line numbers
opt.cursorline = true     -- Highlight the current line
opt.scrolloff = 8         -- Keep context when scrolling
opt.termguicolors = true  -- Enable 24-bit RGB colors

-- --- Indentation & Tabs ---
opt.expandtab = true      -- Use spaces instead of tabs
opt.shiftwidth = 4        -- Indentation amount
opt.tabstop = 4           -- Tab columns
opt.softtabstop = 4       -- Tab columns in insert mode
opt.smartindent = true    -- Auto-indenting

-- --- Search ---
opt.incsearch = true      -- Search as you type
opt.hlsearch = true       -- Highlight search matches
opt.ignorecase = true     -- Ignore case...
opt.smartcase = true      -- ...unless uppercase is used

-- Map <Space> to clear search highlights in Normal mode
vim.keymap.set('n', '<Space>', '<cmd>nohlsearch<CR>')

-- --- Behavior ---
-- Note: 'backspace' behaves normally by default in Neovim.
opt.hidden = true         -- Allow switching buffers without saving
opt.history = 1000        -- Command history size
opt.backup = false        -- Disable backup files
opt.swapfile = false      -- Disable swap files

-- --- Status Line ---
opt.laststatus = 2
-- A simple, functional status line showing file path, modified status, line count, etc.
opt.statusline = "%F%m%r%h%w [%L lines] [%{&ff}] %y [%p%%] [%c:%l]"