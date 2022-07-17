vim.opt.number = true           -- Line numbers
vim.opt.mouse = a               -- Enable mouse clicking
vim.opt.expandtab = true        -- Expand tabs into spaces
vim.opt.shiftwidth = 4          -- Indents will have a width of 4
vim.opt.tabstop = 4             -- Tab width
vim.opt.wrap = false            -- Turn off textwrap
vim.opt.relativenumber = true   -- Relative line numbers

-- Map "jk" and "kj" to "<Esc>"
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true })

