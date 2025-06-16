local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup({
  defaults={
    path_display={"smart"},
    mappings={
      i={
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
          ["<C-q>"] = actions.send_selected_to_qflist,
          ["<C-d>"] = actions.delete_buffer,
      },
      n={
          ["<C-d>"] = actions.delete_buffer,
      }
    }
  }
})



local keymap = vim.keymap.set

keymap('n','<leader>tf','<cmd>Telescope find_files<cr>',{desc="Find files"})
keymap('n','<leader>tr','<cmd>Telescope oldfiles<cr>',{desc="Find recent files"})
keymap('n','<leader>ts','<cmd>Telescope live_grep<cr>',{desc="Find string in cmd"})
keymap('n','<leader>tc','<cmd>Telescope grep_string<cr>',{desc="Find string under cursor"})
keymap('n','<leader>tt','<cmd>TodoTelescope<cr>',{desc="Find todos"})
keymap("n", "<leader>tb", builtin.buffers,{noremap=true, desc="Open buffer list"})


