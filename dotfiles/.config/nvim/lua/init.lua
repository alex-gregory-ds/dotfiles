vim.opt.wrap = false            -- Turn off textwrap
vim.opt.tabstop = 4             -- Tab width
vim.opt.expandtab = true        -- Expand tabs into spaces
vim.opt.shiftwidth = 4          -- Indents will have a width of 4
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.number = true           -- Show current line number
vim.opt.scrolloff = 5           -- Start scrolling before final line
vim.opt.cursorline = true       -- Highlight current line
vim.opt.indentexpr = ""
vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.api.nvim_command "colorscheme slate"

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
map('n', '<leader>', '<C-w>', opts)

-- Open file explorer
map('n', '<leader>e', ':Explore <cr>', opts)     -- Open explorer in dir of current file
map('n', '<leader>E', ':explore . <cr>', opts)  -- Open explorer in root dir

-- Fuzzy file finding without plugins
vim.opt.path = vim.opt.path + "**"
vim.opt.wildmenu = true
vim.opt.wildignore = vim.opt.wildignore + "**/.git/*"

-- Quickly open a todo list
map('n', '<leader>t', ':e ~/notes/todo.md <cr>', opts)
map('n', '<leader>T', ':e ~/notes/ <cr>', opts)
