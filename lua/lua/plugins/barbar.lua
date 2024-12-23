local barbar=require('barbar')
local map=vim.api.nvim_set_keymap
local default={noremap=true, silent=true}

vim.g.barbar_auto_setup=false


-- Setup
barbar.setup({
    animation=false,
    clickable=true,
    sort={ignore_case=true},
})


-- Keybindings

-- Moving between buffers
map('n','<S-h>','<cmd>BufferPrevious<CR>',default)
map('n','<S-l>','<cmd>BufferNext<CR>',default)

-- Shifting buffers around
map('n','<M-h>','<cmd>BufferMovePrevious<CR>',default)
map('n','<M-l>','<cmd>BufferMoveNext<CR>',default)

--kill the buffer
map('n','<S-q>','<cmd>BufferClose<CR>',default)
