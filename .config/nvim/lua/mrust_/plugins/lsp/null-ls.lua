return {
  "jose-elias-alvarez/null-ls.nvim",
  ft = "go",
  config = function()
    local null_ls = require("null-ls")
    local builtin = require("null-ls.builtins")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    null_ls.setup({
      sources = {
        builtin.formatting.gofmt,
        builtin.formatting.goimports_reviser
      },
      on_attach = function (client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({
            group = augroup,
            buffer = bufnr
          })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function ()
              vim.lsp.buf.format({bufnr = bufnr})
            end
          })
        end
      end
    })
  end
}
