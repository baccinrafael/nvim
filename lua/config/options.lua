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
vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
  callback = function()
    local separator = " ▎ "
    vim.opt.statuscolumn = '%s%=%#LineNr4#%{(v:relnum >= 4)?v:relnum."'
      .. separator
      .. '":""}'
      .. '%#LineNr3#%{(v:relnum == 3)?v:relnum."'
      .. separator
      .. '":""}'
      .. '%#LineNr2#%{(v:relnum == 2)?v:relnum."'
      .. separator
      .. '":""}'
      .. '%#LineNr1#%{(v:relnum == 1)?v:relnum."'
      .. separator
      .. '":""}'
      .. '%#LineNr0#%{(v:relnum == 0)?v:lnum." '
      .. separator
      .. '":""}'

    vim.cmd("highlight LineNr0 guifg=#dedede")
    vim.cmd("highlight LineNr1 guifg=#bdbdbd")
    vim.cmd("highlight LineNr2 guifg=#9c9c9c")
    vim.cmd("highlight LineNr3 guifg=#7b7b7b")
    vim.cmd("highlight LineNr4 guifg=#5a5a5a")
  end,
})
