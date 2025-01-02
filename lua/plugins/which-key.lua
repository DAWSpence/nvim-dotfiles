--OLD

-- Non nested

-- wk.register(
--     {<keybind>,<command>, <description>},
--     ...
-- )




-- Nested

-- wk.register({
-- <first_part_of_keybind> = {

--     name = "Name",
--     <second_part_of_keybind> = {<command>, <description>},
--      ...

--      Double nesting

--     <third_part_of_keybind = {
--     name = "Name2",

--     <fourth_part_of_keybind> = {<command>, <description>},
--      ...
--     }
-- }
-- }, { prefix = "Prefix"})



local wk = require("which-key")

wk.setup{
    notify=false,
}






--Global
wk.add({
    {'<leader>e',group='File Explorer',mode='n'},
    {'<leader>ee','<cmd>NvimTreeToggle<cr>',desc='Toggle explorer',mode='n'},
    {'<leader>ef','<cmd>NvimTreeFindFileToggle<cr>',desc='Toggle explorer on cursor',mode='n'},
    {'<leader>ec','<cmd>NvimTreeCollapse<cr>',desc='Collapse file explorer',mode='n'},
    {'<leader>er','<cmd>NvimTreeRefresh<cr>',desc='Refresh file explorer',mode='n'},
})

wk.add({

    {'<leader>t', group='Telescope'},
    {'<leader>tt', '<cmd>Telescope<cr>',desc='Open telescope'},
    {'<leader>tp', '<cmd>Telescope oldfiles<cr>',desc='Old files'},
    {'<leader>tp', '<cmd>Telescope oldfiles<cr>',desc='Old files'},
    {'<leader>tj', '<cmd>Telescope jumplist<cr>',desc='Jumplist'},
    {'<leader>tb', '<cmd>Telescope buffers<cr>',desc='Buffers'},
    {'<leader>tb', '<cmd>Telescope find_files<cr>',desc='Find files'},

    {'<leader>g', group='Git'},
    {'<leader>gb', '<cmd>Telescope git_branches<cr>',desc='Git branches'},
    {'<leader>gf', '<cmd>Telescope git_files<cr>',desc='Git files'},
})
