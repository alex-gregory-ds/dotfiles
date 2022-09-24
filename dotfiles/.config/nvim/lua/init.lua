require('plugins')              -- Package install scripts
require('gitsigns').setup()     -- Activate gitsigns
require('nightfox').setup({})   -- Nightfox colourscheme

vim.cmd('colorscheme nordfox')

vim.opt.wrap = false            -- Turn off textwrap
vim.opt.mouse = a               -- Enable mouse clicking
vim.opt.number = true           -- Line numbers
vim.opt.tabstop = 4             -- Tab width
vim.opt.expandtab = true        -- Expand tabs into spaces
vim.opt.shiftwidth = 4          -- Indents will have a width of 4
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.scrolloff = 5           -- Start scrolling before final line
vim.opt.signcolumn = "yes"      -- Always show gutter column

-- Map "jk" and "kj" to "<Esc>"
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true })

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
map('n', '<leader>', '<C-w>', opts)

-- Resize splits
map('n', '<leader>s', ':vertical resize +10 <cr>', opts)
map('n', '<leader>a', ':vertical resize -10 <cr>', opts)

-- Open file explorer
map('n', '<leader>e', ':e . <cr>', opts)

-- Treesitter config
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "python", "json", "yaml" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "lua", "python", "json", "yaml" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
