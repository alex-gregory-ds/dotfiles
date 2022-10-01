return require('packer').startup(function(use)

    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Colourscheme
    use "EdenEast/nightfox.nvim" -- Colourscheme

    -- Git signs in the gutter
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release
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
