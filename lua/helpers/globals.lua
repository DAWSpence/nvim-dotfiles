cmd = vim.cmd; -- Command function
api = vim.api; -- Neovim API
lsp = vim.lsp; -- LSP API
fn  = vim.fn;  -- Vim function
g   = vim.g;   -- Vim globals
opt = vim.opt; -- Vim optionals


--source external vim plugin configs
vim_source=function (file_name)
    cmd('source ../config-vim/' .. file_name)
end

