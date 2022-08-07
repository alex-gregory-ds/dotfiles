return require('packer').startup(function(use)

    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Colourscheme
    use "EdenEast/nightfox.nvim" -- Colourscheme

    -- File explorer
    use {
        'kyazdani42/nvim-tree.lua',
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Git signs in the gutter
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release
    }

    -- For commenting out code
    use 'tpope/vim-commentary'

end)
