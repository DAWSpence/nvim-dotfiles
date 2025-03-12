if vim.g.vscode then

  local vscode = require('vscode')
  require("vscode.keybindings")

else
  --Map leaders
  vim.g.mapleader=' '
  vim.g.maplocalleader=' '

  --Default to a barable colorscheme if we dont have gui colors
  if not vim.opt.termguicolors then
    vim.cmd("colorscheme slate")
  end


  require("core.general")

  require("lazy-bootstrap")

  require("lazy").setup({
    require("plugins-nvim"),
  })

  require('core.keybindings')



  -- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0

end
