local cmp = require('cmp')
local luasnip=require('luasnip')
require("luasnip/loaders/from_vscode").lazy_load()


cmp.setup{
  -- Mappings for cmp
  completion={
    completeopt="menu,menuone,preview,noselect",
  },

  snippet={
    expand=function(args)
      luasnip.lsp_expand(args.body)
    end,
  },


  mapping = {

    -- Autocompletion menu
    ['<S-j>'] = cmp.mapping.select_next_item(),
    ['<S-k>'] = cmp.mapping.select_prev_item(),

    -- Use <C-p> and <C-n> to navigate through completion variants
    ['<S-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
    ['<S-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),


    -- Use <C-e> to abort autocomplete
    ['<S-e>'] = cmp.mapping({
      i = cmp.mapping.abort(), -- Abort completion
      c = cmp.mapping.close(), -- Close completion window
    }),


    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i' }),
    ['<S-y>'] = cmp.mapping.confirm({ select = true }), -- Turn on autocomplete on <C-y>
    ['<CR>'] = cmp.config.disable, -- Turn off autocomplete on <CR>

  },

  sources = cmp.config.sources({
    { name = 'path' },                    -- Paths
    { name = 'buffer' },                  -- Buffers
    { name = 'nvim_lsp' },                -- LSP
    { name = 'luasnip' },                 -- Luasnip
    { name = 'nvim_lsp_signature_help' }, -- LSP for parameters in functions
    { name = 'nvim_lua' },                -- Lua Neovim API

  }),
}


