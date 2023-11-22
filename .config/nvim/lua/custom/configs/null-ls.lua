local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {
  -- lua
  b.formatting.stylua,

  -- web
  b.diagnostics.stylelint,
  b.code_actions.eslint_d,
  b.formatting.prettier.with {
    filetypes = {
      "html",
      "css",
      "javascript",
      "typescript",
      "json",
    },
  },

  -- ruby
  b.diagnostics.rubocop,
  b.formatting.rufo,

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
  -- b.formatting.latexindent,

  -- markdown
  b.diagnostics.markdownlint,

  -- sql
  b.diagnostics.sqlfluff.with {
    extra_args = { "--dialect", "postgres" },
  },
  b.formatting.sql_formatter,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
