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

  -- Prettier UI and more ?
  use "nvim-telescope/telescope.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"

  use "Pocco81/AutoSave.nvim"
end)
