vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local tree = require("nvim-tree")

tree.setup({
    sort = { sorter = "case_sensitive", },
    view = { width = 30, },
    renderer = { group_empty = true, },
    filters = { dotfiles = true, },
})

vim.keymap.set('n', '<leader>t', function()
    vim.cmd('NvimTreeToggle')
end)
