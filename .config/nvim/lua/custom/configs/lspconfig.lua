local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "tsserver",
  "cmake",
  "pyright",
  "rubocop",
  "bashls",
  "texlab",
  "marksman",
}

vim.diagnostic.config {
  underline = false,
  virtual_text = false,
  float = {
    source = "always",
  },
  signs = true,
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
	  diagnostics = {
	    globals = { "vim" },
	  },
	  workspace = {
		library = {
		  [vim.fn.expand("$VIMRUNTIME/lua")] = true,
		  [vim.fn.stdpath("config") .. "/lua"] = true,
	    },
      },
    },
  },
}
