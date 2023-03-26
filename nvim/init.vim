" basic settings
lua require('basic')
" shortcut key
lua require('keybindings')
" plugins manage
lua require('plugins')
" plugin-config
lua require('plugin-config/theme-nightfox')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/lualine')
lua require('plugin-config/neoscroll')
lua require('plugin-config/windows')
lua require('plugin-config/nvim-comment')
lua require('plugin-config/nvim-treesitter')
" lsp
lua require('lsp/setup')
" nvim-cmp
lua require('lsp/nvim-cmp')

