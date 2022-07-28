require("telescope").load_extension("ui-select")
require("telescope").load_extension("file_browser")

require("lualine").setup({
    options = {
        theme = 'tokyonight'
    }
})

require("gitsigns").setup()
