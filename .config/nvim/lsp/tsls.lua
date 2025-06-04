return {
    init_options = { hostInfo = 'neovim' },
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = {
        'javascript',
        'javascriptreact',
        'javascript.jsx',
        'typescript',
        'typescriptreact',
        'typescript.tsx',
    },
    root_dir = vim.fs.dirname(vim.fs.find(
        { 'tsconfig.json', 'jsconfig.json', 'package.json', '.git' },
        { upward = true, })[1]),
    single_file_support = true,
}
