require('opts')
require('plugins')
require('keymaps')

vim.lsp.enable({ "luals", "gopls", "pyright", "csharpls", "clangd", "tsls", "hls" })

vim.cmd("colorscheme no-clown-fiesta")

