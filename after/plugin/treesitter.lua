local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    ensure_installed = { "python", "c", "lua", "vim", "vimdoc", "query" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
