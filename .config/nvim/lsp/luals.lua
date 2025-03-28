return {
    name = "luals",
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_dir = { "init.lua" },
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    settings = {
        Lua = {
            format = { enable = true },
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            completion = { callSnippet = "Replace" },
            workspace = { checkThirdParty = true }
        }
    }
}
