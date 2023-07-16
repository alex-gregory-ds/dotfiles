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

vim.api.nvim_command "colorscheme habamax"

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
map('n', '<leader>', '<C-w>', opts)

-- Open file explorer
map('n', '<leader>e', ':E <cr>', opts)    -- Open explorer in dir of current file
map('n', '<leader>E', ':e . <cr>', opts)  -- Open explorer in root dir

if vim.opt.diff:get() then
    -- Turn of sign column in diff mode, this prevents diff gutter signs from the plugin
    -- gitsigns.nvim from showing
    vim.opt.signcolumn = "no"
else
    vim.opt.signcolumn = "yes"
end

