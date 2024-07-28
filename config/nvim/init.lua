-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

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
end

-- Setup lazy.nvim
require("lazy").setup("plugins", {
  rocks = { hererocks = false },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true },
  change_detection = { notify = false },
})
