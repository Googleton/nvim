vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim' -- Theme
  use 'neovim/nvim-lspconfig' -- LSP
  use 'williamboman/nvim-lsp-installer' -- Helper to manage Language Servers
  use "tamago324/nlsp-settings.nvim"

  -- Completion related
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "hrsh7th/cmp-vsnip"
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- Snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- Rust specific
  use {"simrat39/rust-tools.nvim", branch = 'modularize_and_inlay_rewrite' }

  -- Prettier UI
  use "nvim-telescope/telescope.nvim" -- Fuzzy finder 
  use "nvim-lua/plenary.nvim" -- Not sure 
  use "nvim-telescope/telescope-ui-select.nvim" -- Fuzzy finder UI 
  --use "feline-nvim/feline.nvim" -- Bottom line 
  use {"nvim-lualine/lualine.nvim", requires = { 'kyazdani42/nvim-web-devicons', opt = true }} -- Bottom line

  -- Git 
  use "tpope/vim-fugitive"
  -- use "Pocco81/AutoSave.nvim"
end)
