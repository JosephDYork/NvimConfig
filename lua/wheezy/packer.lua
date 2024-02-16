vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Initialize Package Managers and Package Pre-requisites
    use('wbthomason/packer.nvim')
    use('nvim-lua/plenary.nvim')
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('neovim/nvim-lspconfig')
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('L3MON4D3/LuaSnip')
    use('nvim-tree/nvim-web-devicons')

    -- Initialize Blue Moon Colorscheme options
    use {
        "kyazdani42/blue-moon",
        config = function()
            vim.opt.termguicolors = true
            vim.cmd "colorscheme blue-moon"
        end
    }

    -- Intialize Treesitter and Treesitter Extensions
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Initialize Harpoon Package and Extensions
    use {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2'
    }

    -- Initialize Telescope Packages and Extensions
    use { 'nvim-telescope/telescope.nvim',
        tag = '0.1.5'
    }
    use('nvim-telescope/telescope-project.nvim')

    -- Initialize LSP-Zero for LSP Functionality
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
    }

    -- Intialize Nvim-Tree Package and Extensions
    use { 'nvim-tree/nvim-tree.lua' }

    -- Initialize Undotree Packages and Extensions
    use('mbbill/undotree')

    -- Initialize Fugative Packages and Extensions
    use('tpope/vim-fugitive')
end)
