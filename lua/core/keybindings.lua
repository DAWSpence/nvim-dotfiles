-- ====================================================================
--BASIC KEYBINDINGS
-- ====================================================================


local api = require('nvim-tree.api')

--Better defaults
vim.keymap.set('n','<Esc>','<cmd>nohlsearch<CR>', {noremap=true, silent=true})

vim.keymap.set("v", "p", '"_dP')

vim.keymap.set("n", "H", "^")

vim.keymap.set("n", "L", "$")

vim.keymap.set("n", "Q", "<C-W>q")

vim.keymap.set("v", "<Tab>", ">gv")

vim.keymap.set("v", "<S-Tab>", "<gv")



--Better window navigation
vim.keymap.set('n','<C-h>','<C-w>h', {noremap=true, silent=true})

vim.keymap.set('n','<C-l>','<C-w>l', {noremap=true, silent=true})
                                   
vim.keymap.set('n','<C-j>','<C-w>j', {noremap=true, silent=true})
                                   
vim.keymap.set('n','<C-k>','<C-w>k', {noremap=true, silent=true})

vim.keymap.set('n','<S-v>','<cmd>vsplit<cr>', {noremap=true, silent=true})
                                   
vim.keymap.set('n','<S-s>','<cmd>split<cr>', {noremap=true, silent=true})



-- Moving between buffers
vim.keymap.set('n','<S-h>','<cmd>:BufferPrevious<CR>',{noremap=true, silent=true})
vim.keymap.set('n','<S-l>','<cmd>:BufferNext<CR>',{noremap=true, silent=true})

-- Shifting buffers around
vim.keymap.set('n','<S-n>','<cmd>:BufferMovePrevious<CR>',{noremap=true, silent=true})
vim.keymap.set('n','<S-m>','<cmd>:BufferMoveNext<CR>',{noremap=true, silent=true})

--kill the buffer
vim.keymap.set('n','<S-q>','<cmd>:BufferClose<CR>',{noremap=true, silent=true})




--window resize
vim.keymap.set('n','K','<C-W>+<CR>',{noremap=true, silent=true})
vim.keymap.set('n','J','<C-W>-<CR>',{noremap=true, silent=true})
vim.keymap.set('n','H','<C-W><<CR>',{noremap=true, silent=true})
vim.keymap.set('n','L','<C-W>><CR>',{noremap=true, silent=true})








--Window swap rebind
vim.keymap.set('n','<C-n>','<C-w>R',{noremap=true, silent=true})
vim.keymap.set('n','<C-m>','<C-w>r',{noremap=true, silent=true})
vim.keymap.set('n','<C-e>', function () api.tree.toggle({path=os.getenv('PWD')}) end, {noremap=true, silent=true})



--Better navigation
vim.keymap.set('n','j','gj', {noremap=true, silent=true})

vim.keymap.set('n','k','gk', {noremap=true, silent=true})

vim.keymap.set('n','<Down>','gj', {noremap=true, silent=true})

vim.keymap.set('n','<Up>','gk', {noremap=true, silent=true})

vim.keymap.set('n','<S-Tab>','<C-w>w', {noremap=true, silent=true})

vim.keymap.set('n','<Down>','<C-o>gj', {noremap=true, silent=true})

vim.keymap.set('n','<Up>','<C-o>gk', {noremap=true, silent=true})

vim.keymap.set('n','<leader>q',':q<CR>', {noremap=true, silent=true})

vim.keymap.set('n','<C-q>',':q!<CR>', {noremap=true, silent=true})

vim.keymap.set('n','<leader>Q',':q!<CR>', {noremap=true, silent=true})

vim.keymap.set('n','<leader>w',':w<CR>', {noremap=true, silent=true})

vim.keymap.set('n','<leader>wq',':wq<CR>', {noremap=true, silent=true})




-- Wrapped line movement
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

--Cursor at bottom of visual select
vim.keymap.set('v','y','ygv<Esc>', {noremap=true, silent=true})







-- -- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
