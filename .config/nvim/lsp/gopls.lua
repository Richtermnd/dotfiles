return {
    name = "gopls",
    cmd = { "gopls" },
    filetypes = { "go" },
    root_dir = vim.fs.dirname(vim.fs.find({ 'go.mod', '.git' }, { upward = true })[1]),
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    settings = {
        gopls = {
            experimentalPostfixCompletions = true,
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
            gofumpt = true,
        }
    },
}
