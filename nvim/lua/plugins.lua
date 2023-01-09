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
  -- nvim-cmp
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'}) -- { name = nvim_lsp }
  use({'hrsh7th/cmp-buffer'})   -- { name = 'buffer' },
  use({'hrsh7th/cmp-path'})     -- { name = 'path' }
  use({'hrsh7th/cmp-cmdline'})  -- { name = 'cmdline' }
  -- vsnip
  use({'hrsh7th/cmp-vsnip'})    -- { name = 'vsnip' }
  use({'hrsh7th/vim-vsnip'})
  use({'rafamadriz/friendly-snippets'})
  -- lspkind
  use({'onsails/lspkind-nvim'})
end)
