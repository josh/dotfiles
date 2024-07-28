vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Write without backups
vim.g.writebackup = false

-- I don't wear extra large tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Neovide on macOS
if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_position_animation_length = 0
  vim.g.neovide_scroll_animation_length = 0
  vim.opt.clipboard = "unnamedplus"
end
