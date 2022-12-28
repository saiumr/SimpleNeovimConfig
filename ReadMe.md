# 介绍  

使用lua写的neovim的简单配置，可以借此了解如何使用lua配置neovim，打造属于自己的IDE  

## Version  

Neovim >= 0.8  
lua >= 5.1
  
## 快捷键  

可以在[keybindings.lua](./nvim/lua/keybindings.lua)里面看到  
基本的就是窗口切换(Ctrl+hjkl ↑↓←→)和tag切换(Alt+hl ←→)  
这是配合nvim-tree和BufferLine插件使用的  
  
## 插件管理  

使用[packer.nvim](https://github.com/wbthomason/packer.nvim)，在使用之前需要先安装  
安装完成之后，在命令模式下使用'PackerSync'就可以下载/更新所有的插件  
  
## LSP(未配置)  

需要用到LSP可以在[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)配置相应语言的补全支持  
