local gitsigns = require('gitsigns')
gitsigns.setup({
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'right_align',
    delay = 1000,
    ignore_whitespace = false,
  },
})


-- local function git_check()
--   if vim.fn.systemlist('get')

-- end
