local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd(
    "BufWritePost",
    { command = "source <afile> | PackerCompile", group = packer_group, pattern = "init.lua" }
)

require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- Theming
    use "folke/tokyonight.nvim"
    use "rakr/vim-one"

    -- LSP & Languages
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "tamago324/nlsp-settings.nvim"

    -- CMP
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/cmp-nvim-lsp"
    use "windwp/nvim-autopairs"
    -- Snippets
    use "saadparwaiz1/cmp_luasnip"
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- Treesitter
    use "nvim-treesitter/nvim-treesitter"

    -- Rust specific
    use "simrat39/rust-tools.nvim"

    -- UI Improvements
    use "nvim-telescope/telescope.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope-ui-select.nvim"
    use "nvim-telescope/telescope-file-browser.nvim"
    use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } }

    -- Git
    use "tpope/vim-fugitive"
    use "lewis6991/gitsigns.nvim"
    use "Pocco81/AutoSave.nvim"
end)



-- Vim options settings
require("hv/set")

-- Keymappings
require("hv/remap")

-- UI Related stuff
require("hv/ui")

-- LSP Related stuff
require("hv/lsp")

-- Autocompletion
require("hv/cmp")
-- Treesitter probably needs to get enabled
require("hv/treesitter")

-- Languages
require("hv/langs")


-- Other manual configs that would just be oneliners elsewhere
require("nvim-autopairs").setup()
