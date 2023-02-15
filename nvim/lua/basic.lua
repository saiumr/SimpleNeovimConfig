-- utf8
vim.o.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

-- jk move cursor reserve 8 lines
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- use relative line number
vim.wo.number = true
vim.wo.relativenumber = true

-- highlight current line
  vim.wo.cursorline = true

-- highlight leftside column
--vim.wo.signcolumn = "yes"

-- rightside limit sign
--vim.wo.colorcolumn = "80"

-- tabstop
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true

-- >> << move 2 spaces
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- new line align, space replace tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- search don't care case exclude up case
vim.o.ignorecase = true
vim.o.smartcase = true

-- search results without highlight
--vim.o.hlsearch = true

-- search when inputing
vim.o.incsearch = true

-- show tab tag line
--vim.o.showtabline = 2

-- mouse support enable:"a" disable:""
vim.o.mouse = ""

-- command line tab height
vim.o.cmdheight = 1

