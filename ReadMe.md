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

### 静态检查  

需要用到LSP可以用两个插件相互配合  
~~使用[lsp-server-install](https://github.com/williamboman/nvim-lsp-installer): 自动安装lsp server~~  
使用[mason.nvim](https://github.com/williamboman/mason.nvim)和[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)：mason.nvim是lsp-server-install的升级版本，原项目已经不再更新了，mason.nvim更强大，更简单  
使用[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): 相应语言的补全支持的配置  
  
现在安装lsp只需要使用`:Mason`命令然后找到对应未安装的lsp按`i`键就可以安装了，也可以在[setup.lua](./nvim/lua/lsp/setup.lua)里面mason-lspconfig下的表里面写上需要的lsp-server自动安装，然后在[setup.lua](./nvim/lua/lsp/setup.lua)里面把安装的lsp调用命令的前缀加在servers表里（参考lua示例），再把对应语言lsp的配置文件如[lua.lua](nvim/lua/lsp/config/)放在lsp/config目录下即可（配置文件内部只需要写配置参数，因为调用命令前缀已经在setup.lua中写了，无需配置的可以建立一个空文件，注意文件名要与setup.lua中写的对应）  

因为之前是使用lsp-server-install配置的lsp服务，可以按照掘金大佬[nshen的博客](https://juejin.cn/post/7154005621887631396)了解怎么迁移到mason.nvim，如果你之前没有使用过lsp-server-install，那么可以省略相应的迁移步骤  

下面是之前推荐lsp-server-install插件时写的介绍（**注意：文件可能在更新之后已经不存在**）：  
查看如何使用推荐知乎[*高效的程序员*的博客](https://zhuanlan.zhihu.com/p/444836713)  
简单来说就是在[页面查看lsp-server](https://github.com/williamboman/nvim-lsp-installer#available-lsps)服务名字写入[setup.lua](./nvim/lua/lsp/setup.lua)自动安装lsp-server  
然后再在配置文件比如[lua.lua](./nvim/lua/lsp/lua.lua)里面使之生效（这个是安装的lua lsp server的配置文件）  
  
### 代码补全  

nvim-cmp插件和快捷键配置，参考[Neovim 内置 LSP 配置 (二)：自动代码补全](https://zhuanlan.zhihu.com/p/445331508)  

## 动画（这个内容不必太在意）

两个显示动画插件，使用更丝滑，另外更改了补全使用的快捷键  
[neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)和[windows.nvim](https://github.com/anuvyklack/windows.nvim)  
使用ctrl u d, zz, zb, zt, ctrl _ | = z

## test  

![test.gif](./test.gif)  
