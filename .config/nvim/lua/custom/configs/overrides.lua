local M = {}

-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
M.treesitter = {
  ensure_installed = {
    "c",
    "cpp",
    "python",
    "bash",
    "latex",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- c/cpp
    "clangd",
    "cpplint",
    "clang-format",

    -- cmake
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

    -- assebmly
    "asm-lsp",
    "asmfmt",
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
