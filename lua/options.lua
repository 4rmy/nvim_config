vim.g.mapleader = " "

-- Line numbers
vim.o.number = true
vim.o.relativenumber = false

-- Better searching
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.incsearch = true

-- Indentation
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.smartindent = true

-- Appearance
vim.o.termguicolors = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true

-- Splits
vim.o.splitbelow = true
vim.o.splitright = true

-- Scrolling
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- Clipboard
vim.o.clipboard = "unnamedplus"

-- Completion
vim.o.completeopt = "menu,menuone,noselect"

-- Mouse
vim.o.mouse = "a"

-- Faster UI updates
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Undo history
vim.o.undofile = true

-- Disable swap/backup files
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

-- Better wrapping
vim.o.wrap = false

