-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.opt_local.spell = false
  end,
})

vim.opt.cursorlineopt = "number"
vim.opt.scrolloff = 20
vim.g.vimsyn_embed = "alpPrj"
vim.opt.undofile = true
vim.opt.fillchars:append(",eob: ")
