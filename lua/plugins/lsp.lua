-- https://github.com/VonHeikemen/lsp-zero.nvim/tree/v4.x
local lsp=require('lsp-zero')
local cmp=require('cmp')
--shutdown a lsp if neccessary
local cancel=function() end
local conform=require('conform')


--------------------------------------------------------------------------
-- LSP INITS
--------------------------------------------------------------------------

local lsp_defaults=require('lspconfig').util.default_config

lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)


vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'gh', function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set('n', 'go', function() vim.lsp.buf.type_definition() end, opts)
    vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
    vim.keymap.set('n', 'gs', function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set('n', 'gR', function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set({'n', 'v'}, 'gf', function() vim.lsp.buf.format({async = true}) end, opts)
    vim.keymap.set('n', 'gc', function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n','d]', function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set('n','[d', function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set('n','<leader>go', function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set('n','<leader>gs', function() vim.diagnostic.workspace_symbol() end, opts)
  end,
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})


--------------------------------------------------------------------------
-- LSP SETUP
--------------------------------------------------------------------------

lsp.nvim_workspace()
require('mason').setup()
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {
    "lua_ls",
    "cmake",
    "clangd",
  },

  handlers = {
    function(server_name)
      local lspconfig=require('lspconfig')
      -- lspconfig.clangd.setup({})
      -- example_server = function()
      -- require('lspconfig').example_server.setup({
      --   ---
      --   -- in here you can add your own
      --   -- custom configuration
      --   ---
      -- })





      --------------------------------------------------------------------------
      require('lspconfig')[server_name].setup({ 
        capabilities=capabilities,
        on_attach=on_attach,
        settings=servers[server_name]
      })
    end,
  },

})
