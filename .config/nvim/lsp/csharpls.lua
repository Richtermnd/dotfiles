return {
    name = "csharpls",
    cmd = { "csharp-ls" },
    filetypes = { "cs" },
    root_dir = vim.fs.dirname(vim.fs.find({ '*.sln', '*.csproj', '.git' }, { upward = true })[1]),
    init_options = {
        AutomaticWorkspaceInit = true,
    },
    single_file_support = true,
}
