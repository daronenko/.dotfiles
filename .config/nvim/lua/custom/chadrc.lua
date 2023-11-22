---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "solarized_dark",
  theme_toggle = { "solarized_dark", "github_light" },

  statusline = {
    theme = "vscode_colored",
  },

  hl_override = {
    Comment = {
      italic = true,
    },
  },

  nvdash = {
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
