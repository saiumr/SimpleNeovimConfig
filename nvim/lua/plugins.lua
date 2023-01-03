return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- theme (nightfox)
  use 'EdenEast/nightfox.nvim'
  -- nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  -- lualine (status line)
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- mason.nvim
  use({'williamboman/mason.nvim'})
  use({'williamboman/mason-lspconfig.nvim'})
  -- lsp-config
  use({'neovim/nvim-lspconfig'})
  -- DAP
  use({'mfussenegger/nvim-dap'})
end)
