return {
    "nvim-treesitter/nvim-treesitter",
    --  event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require("nvim-treesitter.configs")

        -- configure treesitter
        treesitter.setup({ -- enable syntax highlighting
            highlight = {
                enable = true,
            },
            -- enable indentation
            indent = { enable = true },
            -- enable autotagging (w/ nvim-ts-autotag plugin)
            autotag = {
                enable = true,
            },
            sync_install = false,
            auto_install = false,
            ignore_install = {},
            modules = {},
            -- ensure these language parsers are installed
            ensure_installed = {
                "go", "gomod", "gotmpl", "gowork",
                "python",
                "javascript", "html", "css",
                "sql",
                "yaml", "json", "dockerfile", "gitignore", "markdown",
                "bash", "vim", "vimdoc", "lua", "c",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
}
