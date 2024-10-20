return {
    "neovim/nvim-lspconfig",
    config = function ()
        local lspconfig = require("lspconfig")
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true
        lspconfig.html.setup({
            capabilities = capabilities
        })
    end
}
