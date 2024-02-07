local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local b = null_ls.builtins

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local sources = {
  -- cpp
  b.diagnostics.cpplint,
  b.formatting.clang_format,

  -- cmake
  b.diagnostics.cmake_lint,

  -- python
  b.diagnostics.mypy.with {
    extra_args = function()
      local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_DEFAULT_ENV") or "/usr"
      return { "--python-executable", virtual .. "/bin/python3" }
    end,
  },
  b.diagnostics.flake8,
  b.formatting.autoflake,

  -- bash
  b.diagnostics.shellcheck,
  b.formatting.beautysh,

  -- latex
  b.formatting.latexindent,

  -- assembly
  b.formatting.asmfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
