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

    -- For commenting out code
    use 'tpope/vim-commentary'

end)
