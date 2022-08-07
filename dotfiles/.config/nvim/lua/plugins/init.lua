return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use "EdenEast/nightfox.nvim" -- Colourscheme

    use {
        'kyazdani42/nvim-tree.lua',
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
end)
