local M = {}

M.treesitter = {
  ensure_installed = {
    -- defaults
    "vim",
    "lua",

    -- web
    "html",
    "css",
    "javascript",
    "ruby",

    -- main
    "c",
    "cpp",
    "python",
    "bash",

    -- others
    "markdown",
    "markdown_inline",
    "latex",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- web
    "html-lsp",
    "css-lsp",
    "typescript-language-server",
    "stylelint",
    "eslint_d",
    "prettier",

    -- ruby
    "rubocop",
    "rufo",

    -- c/cpp
    "clangd",
    "cpplint",
    "clang-format",

    "cmake-language-server",
    "cmakelint",

    -- python
    "pyright",
    "mypy",
    "flake8",
    "autoflake",

    -- bash
    "bash-language-server",
    "shellcheck",
    "beautysh",

    -- latex
    "texlab",
    "latexindent",

    -- markdown
    "marksman",
    "markdownlint"
  },
}

-- git support in nvimtree
M.nvimtree = {
  view = {
    width = 35,
  },

  git = {
    enable = true,
  },

  renderer = {
    icons = {
      show = {
        git = true,
      },
    },
    indent_markers = {
      enable = true,
    },
  },
}

return M
