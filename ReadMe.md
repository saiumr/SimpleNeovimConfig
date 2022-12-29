# 介绍  

使用lua写的neovim的简单配置，可以借此了解如何使用lua配置neovim，打造属于自己的IDE  
关于所有的配置写法都可以在[nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)找到  

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
  
## LSP(仅配置了lua)  

需要用到LSP可以用两个插件相互配合  
[lsp-server-install](https://github.com/williamboman/nvim-lsp-installer): 自动安装lsp server  
[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): 配置相应语言的补全支持  
查看如何使用推荐知乎[*高效的程序员*的博客](https://zhuanlan.zhihu.com/p/444836713)  
简单来说就是在[页面查看lsp-server](https://github.com/williamboman/nvim-lsp-installer#available-lsps)服务名字写入[setup.lua](./nvim/lua/lsp/setup.lua)以便自动安装  
然后再在配置文件比如[lua.lua](./nvim/lua/lsp/lua.lua)里面使之生效（这个是安装的lua lsp server的配置文件）  
  
## test  

![test.gif](./test.gif)  
  