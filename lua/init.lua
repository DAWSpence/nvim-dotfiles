  --Map leaders
  vim.g.mapleader=' '
  vim.g.maplocalleader=' '

  --Default to a barable colorscheme if we dont have gui colors
  if not vim.opt.termguicolors then
    vim.cmd("colorscheme slate")
  end


  require("core.general")

  require('core.keybindings')

  require("lazy-bootstrap")

  require("lazy").setup({
    require("plugins-nvim"),
  })


  -- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0

