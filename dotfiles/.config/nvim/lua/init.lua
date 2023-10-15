vim.opt.wrap = false            -- Turn off textwrap
vim.opt.mouse = a               -- Enable mouse clicking
vim.opt.number = true           -- Line numbers
vim.opt.tabstop = 4             -- Tab width
vim.opt.expandtab = true        -- Expand tabs into spaces
vim.opt.shiftwidth = 4          -- Indents will have a width of 4
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.scrolloff = 5           -- Start scrolling before final line
vim.opt.cursorline = true       -- Highlight current line
vim.opt.indentexpr = ""

vim.api.nvim_command "colorscheme sorbet"

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
map('n', '<leader>', '<C-w>', opts)

-- Open file explorer
map('n', '<leader>e', ':E <cr>', opts)    -- Open explorer in dir of current file
map('n', '<leader>E', ':e . <cr>', opts)  -- Open explorer in root dir

-- Fuzzy file finding without plugins
vim.opt.path = vim.opt.path + "**"
vim.opt.wildmenu = true
vim.opt.wildignore = vim.opt.wildignore + "**/.git/*"

-- Reverse colors in visual mode
vim.api.nvim_command('hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse')

-- Improve diff colors
vim.api.nvim_command('hi DiffAdd ctermfg=NONE ctermbg=17 cterm=NONE')
vim.api.nvim_command('hi DiffText ctermfg=NONE ctermbg=53 cterm=NONE')
vim.api.nvim_command('hi DiffChange ctermfg=NONE ctermbg=236 cterm=NONE')
vim.api.nvim_command('hi DiffDelete ctermfg=137 ctermbg=NONE cterm=NONE')
