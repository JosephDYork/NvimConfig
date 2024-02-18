vim.opt.termguicolors = true
require("bufferline").setup{
options = {
    offsets = {
            {
                filetype = "NvimTree",
                text = "--- File Explorer ---",
                highlight = "Directory",
                separator = true
            }
        },
    separator_style = "slant"
    }
}
