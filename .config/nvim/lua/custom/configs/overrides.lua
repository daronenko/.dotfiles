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
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "rome",
    "prettier",

    -- ruby
    -- "solargraph",
    -- "rubocop",
    "rubyfmt",

    -- c/cpp
    "clangd",
    "cpplint",
    "clang-format",

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
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
