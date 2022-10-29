 return require('packer').startup(function(use)

    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Colourscheme
    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require("catppuccin").setup {
                flavour = "macchiato" -- mocha, macchiato, frappe, latte
            }
            vim.api.nvim_command "colorscheme catppuccin"
        end
    }

    -- Git signs in the gutter
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }	

    -- Better syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- For commenting out code
    use 'tpope/vim-commentary'

    -- Language server protocal config
    use 'neovim/nvim-lspconfig'

end)
