local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        prompt_prefix = "   ",
      }
    }
  },
  {
    "lervag/vimtex",
    lazy = false,
    config = function()
      vim.g.vimtex_view_method = "sioyek"
      -- vim.g.vimtex_compiler_latexmk_engines = {
      --   _ = "-xelatex"
      -- }
      -- vim.g.tex_comment_nospell = 1
      -- vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
      -- vim.g.vimtex_quickfix_ignore_filters = {
      --   "Underfull",
      --   "Overfull",
      --   "Negative"
      -- }
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    lazy = false,
    build = "cd ~/.local/share/nvim/lazy/markdown-preview.nvim/app/ && ./install.sh",
    run = "cd app && npm install",
    config = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  }
}

return plugins
