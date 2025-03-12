return {
  --Gruvbox material


  { "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    config=function()
       require("plugins.gruvbox")
    end,
  },




  -- Mason  
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require ( "plugins.mason" )
    end,
  },




-- Which key  
{
  "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("plugins.which-key")
    end,
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
},


-- Comments
{
  'numToStr/Comment.nvim',
  version=false,
  config = function()
    require('Comment').setup()
  end,
},


  -- Telescope  
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "ahmedkhalf/project.nvim",
    },
    config = function()
      require ( "plugins.telescope" )
    end,
  },




  
  -- CMP  
  {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-nvim-lua',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      require ( "plugins.cmp" )
    end,
  },


  {
    'L3MON4D3/LuaSnip',
    version='v2.*',
    build='make install_jsregexp',
    event='InsertEnter',
  },



  -- Git Signs 
  {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    config = function()
      require ( "plugins.gitsigns" )
    end,
  },


  -- TreeSitter  
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require ( "plugins.treesitter" )
    end,
  },



  -- Mini.nvim  
  {
    'echasnovski/mini.nvim',
    version = false,
    config = function ()

      --Enclosing characters
      require('mini.surround').setup()

      --Basic jumping
      require('mini.jump').setup()

      --Basic autopairs
      require('mini.pairs').setup()

      --Move visual selected lines
      require('mini.move').setup()

      --Move visual selected lines
      require('mini.operators').setup()

      --Basic align
      require('mini.align').setup()

      --Basic motions
      require('mini.jump2d').setup({

        mappings = {
          start_jumping = '<leader>f',
          },

    })
    end,
  },



  --Toggleterm
  {'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require ("plugins.toggleterm")
    end
  },



  --lightline
  {'itchyny/lightline.vim',
    config = function ()
      vim.cmd([[
          let g:lightline={'colorscheme': 'one',}
      ]])
    end,
  },



  {
   "nvim-tree/nvim-tree.lua",
    init=function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,


    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("plugins.nvim-tree")
    end,
},




{
  "romgrk/barbar.nvim",

  init=function()
    vim.g.barbar_auto_setup=false
  end,

  version='^1.0.0',

  lazy=false,

  dependencies={
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },





  config=function()

    local barbar=require('barbar')
    local map=vim.api.nvim_set_keymap
    local default={noremap=true, silent=true}

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
    map('n','<S-n>','<cmd>BufferMovePrevious<CR>',default)
    map('n','<S-m>','<cmd>BufferMoveNext<CR>',default)

    --kill the buffer
    map('n','<S-q>','<cmd>BufferClose<CR>',default)

  end,
},





-- Buffer mode

{
  'Iron-E/nvim-bufmode',
  cmd = 'BufmodeEnter', -- don't load until using this command

  config = function() 
    require('bufmode').setup {
      enter_mapping = false,
      bufferline=false,
      barbar=false,
    }
  end,

  dependencies = {
    'Iron-E/nvim-libmodal',
    'romgrk/barbar.nvim',
  },
},




-- Tab mode
{
  'Iron-E/nvim-tabmode',
  cmd = 'TabmodeEnter', 

  config = function()
    require('tabmode').setup {
    enter_mapping = false,
    bufferline = false, -- add bufferline.nvim keymaps
    barbar = false -- add barbar.nvim keymaps
  }
  end,
  dependencies = {'Iron-E/nvim-libmodal'},

},



-- Custom modes
{
  'Iron-E/nvim-libmodal',
  lazy = true, -- don't load until necessary

},




-- Latex plugin
--{
--  'lervag/vimtex',
--  lazy=false
--},



--Latex completion
--{
--  'micangl/cmp-vimtex',
--  lazy=false,
--  config=function()
--    require('plugins.cmptex')
--  end
--   
--}


}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
