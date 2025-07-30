return {
    cmd = { 'clangd' },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda', 'proto' },
    root_dir = vim.fs.dirname(vim.fs.find(
        { '.clangd', '.clang-tidy', '.clang-format', 'compile_commands.json', 'compile_flags.txt', 'configure.ac', '.git', }, 
        { path = fname, upward = true })[1]),
    single_file_support = true,
    capabilities = {
        textDocument = {
            completion = {
                editsNearCursor = true,
            },
        },
        offsetEncoding = { 'utf-8', 'utf-16' },
    },
}

