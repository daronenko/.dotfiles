local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {
  -- lua
  b.formatting.stylua,

  -- web
  b.formatting.deno_fmt,
  b.formatting.rome,
  b.formatting.prettier.with {
    filetypes = {
      "html",
      "css",
      "javascript",
      "typescript",
      "json",
      "markdown",
    },
  },

  -- ruby
  b.formatting.rubyfmt,

  -- cpp
  b.diagnostics.cpplint,
  b.formatting.clang_format,

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
  b.diagnostics.vale,
  b.formatting.latexindent,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
