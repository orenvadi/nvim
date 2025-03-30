-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Snacks animations
-- Set to `false` to globally disable all snacks animations
vim.g.snacks_animate = false

local opt = vim.opt

opt.relativenumber = false

-- neovide config
if vim.g.neovide then
  vim.o.guifont = "JetbrainsMono Nerd Font:h14"
  vim.g.neovide_fullscreen = true
end
