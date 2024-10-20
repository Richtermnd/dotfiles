return {
    "neovim/nvim-lspconfig",
    config = function ()
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup({
            cmd = {"clangd"},
            filetypes = {"c", "cpp"},
            root_dir = lspconfig.root_pattern(
                'Makefile',
                '.clangd',
                '.clang-tidy',
                '.clang-format',
                'compile_commands.json',
                'compile_flags.txt',
                'configure.ac',
                '.git'
            )
        })
    end
}
