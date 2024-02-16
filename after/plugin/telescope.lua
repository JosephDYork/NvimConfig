local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup {
    defaults = {
        mappings = {
            i = {
            }
        }
    },
    pickers = {
        picker_name = {
        }
    },
    extensions = {
        project = {
            base_dirs = {
                '$USERPROFILE/source/repos',
            },
            hidden_files = true,
            theme = "cursor",
            order_by = "asc",
            search_by = "title",
            sync_with_nvim_tree = true,
        }
    }
}

vim.keymap.set('n', '<leader>pp', ":lua require'telescope'.extensions.project.project{}<CR>")
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)
