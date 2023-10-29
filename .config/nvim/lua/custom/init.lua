local opt = vim.opt

-- general
opt.encoding = "utf-8"
opt.swapfile = false

-- line numbers
opt.number = true
opt.relativenumber = true

-- indenting
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

local autocmd = vim.api.nvim_create_autocmd

-- auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})


vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
