require('plugins')              -- Package install scripts
require('gitsigns').setup()     -- Activate gitsigns
require('nightfox').setup({})   -- Nightfox colourscheme

vim.cmd('colorscheme nightfox')

vim.opt.wrap = false            -- Turn off textwrap
vim.opt.mouse = a               -- Enable mouse clicking
vim.opt.number = true           -- Line numbers
vim.opt.tabstop = 4             -- Tab width
vim.opt.expandtab = true        -- Expand tabs into spaces
vim.opt.shiftwidth = 4          -- Indents will have a width of 4
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.scrolloff = 5           -- Start scrolling before final line

-- Map "jk" and "kj" to "<Esc>"
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true })

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
map('n', '<leader>', '<C-w>', opts)
