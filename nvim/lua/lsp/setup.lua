-- :h mason-default-settings
require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

-- mason-lspconfig uses the `lspconfig` server names in the APIs it exposes - not `mason.nvim` package names
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
    --"pyright",
    --"gopls",
    --"clangd",
    --[[
    "tsserver",
    "tailwindcss",
    "bashls",
    "cssls",
    "dockerls",
    "emmet_ls",
    "html",
    "jsonls",
    "rust_analyzer",
    "taplo",
    "yamlls",
    ]]
  },
})

local lspconfig = require("lspconfig")

-- 安装列表
-- { key: 服务器名， value: 配置文件 }
-- key 必须为下列网址列出的 server name，不可以随便写
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local servers = {
  lua_ls = require("lsp.config.lua"), -- lua/lsp/config/lua.lua
  pyright = require("lsp.config.pyright"),
  gopls = require("lsp.config.gopls"),
  clangd = require("lsp.config.clangd"),
  --[[
  bashls = require("lsp.config.bash"),
  html = require("lsp.config.html"),
  cssls = require("lsp.config.css"),
  emmet_ls = require("lsp.config.emmet"),
  jsonls = require("lsp.config.json"),
  tsserver = require("lsp.config.ts"),
  rust_analyzer = require("lsp.config.rust"),
  yamlls = require("lsp.config.yamlls"),
  remark_ls = require("lsp.config.markdown"),
  ]]
}

for name, _ in pairs(servers) do
  -- 使用默认参数
  lspconfig[name].setup({})
end
