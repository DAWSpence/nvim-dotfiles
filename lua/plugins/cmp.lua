local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  completion = {
    completeopt = "menu,menuone,preview,noselect",
  },
  -- configure how nvim-cmp interacts with snippet engine

  snippet = { 
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  window={
    completion=cmp.config.window.bordered(),
    documentation=cmp.config.window.bordered(),
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-n>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-p>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),

  -- sources for autocompletion
  sources = cmp.config.sources({
    { name = "nvim_lsp"},
    { name = "luasnip" }, -- snippets
    { name = "buffer" }, -- text within current buffer
    { name = "path" }, -- file system paths
  }),

  -- configure lspkind for vs-code like pictograms in completion menu
  formatting = {
    fields = { 'kind', 'abbr', 'menu' },

    format = function(entry, vim_item)

      vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
      vim_item.menu = ({

        nvim_lsp = '[LSP]',
        luasnip = '[Snippet]',
        buffer = '[Buffer]',
        path = '[Path]',

      })[entry.source.name]

      return vim_item
    end,
  },

})