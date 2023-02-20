-- leader key: <leader> -> " "
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- set shortcut key
-- use vim.api.nvim_set_keymap()

-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

-- move 9 lines (Ctrl+u/d)
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- Support constantly indent code in visual mode (< >)
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- sv 水平分屏
-- sh 垂直分屏
-- sc 关闭当前分屏 (s = close)
-- so 关闭其他分屏 (o = other)
-- s>s<s=sjsk 分屏比例控制

--[[
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt) -- close others

-- 比例控制（不常用，因为支持鼠标拖拽）
map("n", "s>", ":vertical resize +20<CR>", opt)
map("n", "s<", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize +10<CR>",opt)
map("n", "sk", ":resize -10<CR>",opt)
]]

  -- 使用 Ctrl + hjkl 在窗口之间跳转
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

map("n", "<C-Left>", "<C-w>h", opt)
map("n", "<C-Up>", "<C-w>j", opt)
map("n", "<C-Down>", "<C-w>k", opt)
map("n", "<C-Right>", "<C-w>l", opt)

-- nvim-tree Alt + m
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

-- bufferline Alt + m
map('n', '<A-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<A-l>', ':BufferLineCycleNext<CR>', opt)

map('n', '<A-Left>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<A-Right>', ':BufferLineCycleNext<CR>', opt)

map('n', '<A-q>', ':BufferLinePickClose<CR>', opt)
------------------------------------------------------------------
-- 插件快捷键
local pluginKeys = {}

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<S-tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
    -- 下一个
    ['<tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end

return pluginKeys
