-- Set associating between turned on plugins and filetype
vim.cmd([[filetype plugin on]])

-- Disable comments on pressing Enter
vim.cmd([[autocmd FileType * setlocal formatoptions-=cro]])

--Keep buffer sizes consistent
vim.cmd([[autocmd VimResized * wincmd =]])


--Base settings

-- Editor
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.virtualedit = 'block'
vim.opt.signcolumn = 'yes'
vim.opt.showmode = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.fixeol = false
vim.opt.foldmethod = 'manual'
vim.opt.mouse="a"


-- Update time
vim.opt.timeoutlen = 300
vim.opt.updatetime = 250

-- No backups
vim.opt.swapfile=false
vim.opt.backup=false
vim.opt.writebackup=false
vim.opt.autoread=true

-- Indention
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.laststatus=2
vim.opt.breakindent = true

-- Scrolling
vim.opt.scrolloff = 20
vim.opt.sidescrolloff = 20
vim.opt.sidescroll = 20
vim.opt.wrap=true


-- Cases and matching
vim.opt.ignorecase = true
vim.opt.joinspaces = false
vim.opt.smartcase = true
vim.opt.showmatch = true

-- Split below and right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Better completion experience
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.o.completeopt= "menuone,noselect"

-- Search
vim.opt.inccommand = 'split'
vim.opt.hlsearch = true
vim.opt.gdefault=true


-- vim: tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=1
