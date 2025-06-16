return {

    --Tokyo night dark  
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      setup='night'
    },
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()

      require('lualine').setup({
        options={
          theme='onedark',
          component_seperators={left='|',right='|'},
          section_seperators={left='|',right='|'}
        }
      })

    end

  },




  {
    'stevearc/oil.nvim',
    dependencies={'nvim-tree/nvim-web-devicons'},

    config=function()
      require('oil').setup({
        default_file_explorer=true,
      })
        vim.keymap.set('n','-','<cmd>Oil<CR>',{desc='Open file explorer'})
    end
  },


  {
    'nvim-neo-tree/neo-tree.nvim',
    branch="v3.x",
    dependencies={
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
    },
    config=function()
      require("neo-tree").setup({
        filesystem = {
          bind_to_cwd = true,       
          follow_current_file = { enabled = true }, 
          cwd_target = {
            sidebar = "cwd",        
            current = "cwd",
          },
        },
      })
      vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle reveal<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>ec", "<cmd>Neotree toggle current reveal_force_cwd<CR>", { noremap = true, silent = true })
    end
  },


  --substitute
  {
    "gbprod/substitute.nvim",
    event = { "BufReadPre", "BufNewFile" },

    config = function()
      local substitute = require("substitute")
      substitute.setup()

      local keymap = vim.keymap.set 
      keymap("n", "s", substitute.operator, {noremap=true, desc = "Substitute with motion" })
      keymap("n", "ss", substitute.line, {noremap=true, desc = "Substitute line" })
      keymap("n", "S", substitute.eol, {noremap=true, desc = "Substitute to end of line" })
      keymap("x", "s", substitute.visual, {noremap=true, desc = "Substitute in visual mode" })
    end,

  },


  {
    'ggandor/leap.nvim',
    config=function()
      vim.keymap.set({'n', 'x', 'o'}, 'f',  '<Plug>(leap-forward)')
      vim.keymap.set({'n', 'x', 'o'}, 'F',  '<Plug>(leap-backward)')
      vim.keymap.set({'n', 'x', 'o'}, '<leader>gw', '<Plug>(leap-from-window)')
    end
  },


--  LSP config (using lsp-zero, this wont be neccessary if nvim version > 0.11*)
  {
   
    'VonHeikemen/lsp-zero.nvim',
    dependencies={
      'neovim/nvim-lspconfig',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      { 'williamboman/mason.nvim', config=true },
      {'mason-org/mason-lspconfig.nvim', config=true},
      { 'stevearc/conform.nvim',opts={}}
    },

    config=function()
      require('plugins.lsp')
    end

  }, 







  -- indent breakline
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {
      indent = {
        char = '▏',
      },
      scope = {
        show_start = false,
        show_end = false,
        show_exact_scope = false,
      },
      exclude = {
        filetypes = {
          'help',
          'startify',
          'dashboard',
          'packer',
          'neogitstatus',
          'NvimTree',
          'Trouble',
        },
      },
    },
  },



  -- Comment
  {
    'numToStr/Comment.nvim',
    opts = {},
    config = function()
      local opts = { noremap = true, silent = true }
      vim.keymap.set('n', '<C-/>', require('Comment.api').toggle.linewise.current, opts)
      vim.keymap.set('v', '<C-/>', "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", opts)
    end,
  },






  -- Which key  
  {
    "folke/which-key.nvim",
      event = "VeryLazy",

      config = function()
        require("which-key").setup({
          notify=false
        })
      end,

      init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
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
    end
  },




  -- CMP  
  {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
      'L3MON4D3/LuaSnip',
      build = function()
        -- Build Step is needed for regex support in snippets.
        -- This step is not supported in many windows environments.
        -- Remove the below condition to re-enable on windows.
        if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
          return
        end
        return 'make install_jsregexp'
      end,

      {
          'rafamadriz/friendly-snippets',
          config = function()
            require('luasnip.loaders.from_vscode').lazy_load()
          end,
      },
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-nvim-lua',
      'rafamadriz/friendly-snippets',
      'onsails/lspkind-nvim'
    },
    config = function()
      require ( "plugins.cmp" )
    end,

  },



  -- Git Signs 
  {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    config = function()
      require ( "plugins.gitsigns" )
    end
  },



  -- TreeSitter  
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require ("plugins.treesitter")
    end
  },



  -- nvim-surround
  {
    'kylechui/nvim-surround',
    version = "^3.0.0",
    event="VeryLazy",
    config=function()
      require('nvim-surround').setup()
    end
  },


  --align
  {
    'echasnovski/mini.align',
    config=function()
      require('mini.align').setup({
        mappings={
          start='a',
          start_with_preview='A'
        }
      })
    end
  },


  --Move text anywhere
  {
    "hinell/move.nvim",
    config=function()
      local opts={noremap=true,silent=true}
      local map=vim.keymap.set
      map('x', '<C-k>', ':MoveBlock -1<CR>', opts)
      map('x', '<C-j>', ':MoveBlock 1<CR>', opts)
      map('x', '<C-h>', ':MoveHBlock -1<CR>', opts)
      map('x', '<C-l>', ':MoveHBlock 1<CR>', opts)
    end

  },

  --autopairs
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
    opts = {} 
  },


  --Toggleterm
  {'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require ("plugins.toggleterm")
    end
  },

  --winresize plugin
  {
    "pogyomo/winresize.nvim",
    config = function ()

      local resize = function(win, amt, dir)
          return function()
              require("winresize").resize(win, amt, dir)
          end
      end

      vim.keymap.set("n", "rh", resize(0, 2, "left"))
      vim.keymap.set("n", "rj", resize(0, 1, "down"))
      vim.keymap.set("n", "rk", resize(0, 1, "up"))
      vim.keymap.set("n", "rl", resize(0, 2, "right"))

    end
  },


  --barbar

  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', 
      'nvim-tree/nvim-web-devicons', 
    },

    config = function()

      require('barbar').setup({
        animation=false,
        clickabble=true,
        auto_hide=1
      })

      local map = vim.keymap.set

      map('n','<S-h>','<cmd>BufferPrevious<CR>',{noremap=true,desc='Previous tab'})
      map('n','<S-l>','<cmd>BufferNext<CR>',{noremap=true,desc='Next tab'})
      map('n','<S-n>','<cmd>BufferMovePrevious<CR>',{noremap=true,desc='Swap previous tab'})
      map('n','<S-m>','<cmd>BufferMoveNext<CR>',{noremap=true,desc='Swap next buffer'})
      map('n','<leader>bq','<cmd>BufferClose<CR>',{noremap=true,desc='Close buffer'})
      map('n', '<leader>bf', '<cmd>BufferLast<CR>',   {noremap=true})
      map('n', '<leader>bl', '<cmd>BufferGoto 1<CR>',   {noremap=true})

    end

  },


    -- Detect tabstop and shiftwidth automatically
  {
    'tpope/vim-sleuth',
  },



  {
    "rmagatti/auto-session",
    config = function()
      local auto_session = require("auto-session")

      auto_session.setup({
        auto_restore_enabled = false,
        -- auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
      })

      vim.keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
      vim.keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
    end,
  },


  {
      'goolord/alpha-nvim',
      config = function ()
          require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
  }

}


-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
