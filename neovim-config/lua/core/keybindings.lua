--BASIC KEYBINDINGS--

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







--Better navigation
vim.keymap.set('n','j','gj', {noremap=true, silent=true})

vim.keymap.set('n','k','gk', {noremap=true, silent=true})

vim.keymap.set('n','<Down>','gj', {noremap=true, silent=true})

vim.keymap.set('n','<Up>','gk', {noremap=true, silent=true})

vim.keymap.set('n','<S-Tab>','<C-w>w', {noremap=true, silent=true})

vim.keymap.set('n','<Down>','<C-o>gj', {noremap=true, silent=true})

vim.keymap.set('n','<Up>','<C-o>gk', {noremap=true, silent=true})



-- Wrapped line movement
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

--Cursor at bottom of visual select
vim.keymap.set('v','y','ygv<Esc>', {noremap=true, silent=true})


-- -- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
