-- Initialize Package manager
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Initialize Package Pre-requisites
    use('wbthomason/packer.nvim')
    use('nvim-lua/plenary.nvim')
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('neovim/nvim-lspconfig')
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('L3MON4D3/LuaSnip')
    use('nvim-tree/nvim-web-devicons')
    use 'lewis6991/gitsigns.nvim'

    -- Initialize Blue Moon Colorscheme
    use { "kyazdani42/blue-moon",
        config = function()
            vim.opt.termguicolors = true
            vim.cmd "colorscheme blue-moon"
        end
    }

    -- Intialize Treesitter for AST access
    use { 'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Initialize Harpoon for rapid buffer switching
    use { 'ThePrimeagen/harpoon',
        branch = 'harpoon2'
    }

    -- Initialize Telescope and extensions for file search
    use { 'nvim-telescope/telescope.nvim',
        tag = '0.1.5'
    }

    -- Initialize LSP-Zero for LSP Functionality
    use { 'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
    }

    -- Initialize Alpha-Nvim for a dashboard popup
    use('goolord/alpha-nvim')

    -- Initialize Telescope Project for project management
    use('nvim-telescope/telescope-project.nvim')

    -- Intialize Nvim-Tree Package for file manipulation
    use('nvim-tree/nvim-tree.lua')

    -- Initialize Undotree for robust undo/redo functionality
    use('mbbill/undotree')

    -- Initialize Fugitive for in-nvim Git functionality
    use('tpope/vim-fugitive')

    -- Initialize Lualine for pretty status lines
    use('nvim-lualine/lualine.nvim')

    -- Initialize Bufferline for pretty tab management
    use{'akinsho/bufferline.nvim', tag = "*"}
end)
