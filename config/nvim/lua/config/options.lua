-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

if vim.g.neovide then
  -- Disable Neovide animations
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_position_animation_length = 0
  vim.g.neovide_scroll_animation_length = 0
end

-- vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
