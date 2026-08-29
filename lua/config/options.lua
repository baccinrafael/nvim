-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.opt.cursorlineopt = "number"
vim.opt.scrolloff = 20
vim.g.vimsyn_embed = "alpPrj"
vim.opt.undofile = true
vim.opt.fillchars:append(",eob: ")
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes:2"
vim.opt.laststatus = 3 -- usa barra global (ou '2' para uma barra por janela)
vim.opt.winbar = nil -- remove a barra superior nativa
