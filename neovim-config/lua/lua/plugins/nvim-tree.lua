local api=require('nvim-tree.api')
local nvim_tree=require('nvim-tree')



nvim_tree.setup {

    sort = {
        sorter = "case_sensitive",
        },

    view = {
        width = 30,
        },

    renderer = {
        group_empty = true,
        },

    filters = {
        dotfiles = true,
        },


}

vim.keymap.set('n', '<leader>e', require("nvim-tree.api").tree.toggle,{silent=true})

