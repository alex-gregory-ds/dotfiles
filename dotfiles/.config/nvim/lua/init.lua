vim.opt.wrap = false            -- Turn off textwrap
vim.opt.mouse = a               -- Enable mouse clicking vim.opt.number = true
vim.opt.tabstop = 4             -- Tab width
vim.opt.expandtab = true        -- Expand tabs into spaces
vim.opt.shiftwidth = 4          -- Indents will have a width of 4
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.number = true           -- Show current line number
vim.opt.scrolloff = 5           -- Start scrolling before final line
vim.opt.cursorline = true       -- Highlight current line
vim.opt.indentexpr = ""
vim.opt.termguicolors = false   -- Turn off termguicolors for habamaxx theme

vim.api.nvim_command "colorscheme habamaxx"

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

-- Reverse colors in visual mode
vim.api.nvim_command('hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse guifg=NONE guibg=NONE gui=reverse cterm=reverse')

-- Improve diff colors
vim.api.nvim_command('hi DiffAdd ctermfg=NONE ctermbg=17 cterm=NONE')
vim.api.nvim_command('hi DiffText ctermfg=NONE ctermbg=53 cterm=NONE')
vim.api.nvim_command('hi DiffChange ctermfg=NONE ctermbg=236 cterm=NONE')
vim.api.nvim_command('hi DiffDelete ctermfg=137 ctermbg=NONE cterm=NONE')

-- Quickly open a todo list
map('n', '<leader>t', ':e ~/notes/todo.md <cr>', opts)
map('n', '<leader>T', ':e ~/notes/ <cr>', opts)
