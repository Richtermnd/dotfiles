vim.g.mapleader = " "
local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.equalalways = false

-- tabs & indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false

opt.scrolloff = 8

opt.autochdir = false
opt.formatoptions:remove("c")

opt.isk = "@,48-57,_,192-255"

opt.listchars = { tab = '| ', trail = '-', leadmultispace = "|   |   "}  -- no more mini.indentoscope
opt.list = true

opt.winborder = "rounded"

