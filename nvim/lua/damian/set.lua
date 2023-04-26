vim.opt.number = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 1

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.mouse = "a"
vim.opt.wrap = true
vim.wo.wrap = true
vim.wo.linebreak = true

vim.o.signcolumn = "yes"

vim.opt.smartindent = true

vim.opt.wrap = false

vim.o.foldlevel = 99
vim.o.foldmethod = "indent"
vim.o.foldenable = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50
