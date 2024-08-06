--Gloabl aliases
require ("helpers/globals")

--Keybinding functions
require ('helpers/keyboard')

-- Bootsraping plugin manager
require ("lazy-bootstrap")

-- Settings
require ("settings")

-- Plugin management 
require("lazy").setup({
  require("plugins"),
  require("plugins-vim")
})

-- Keybindings
require ("keybindings")

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
