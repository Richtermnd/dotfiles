return {
    "saghen/blink.cmp",
    dependencies = { "L3MON4D3/LuaSnip" },

    version = '1.*',

    opts = {
        keymap = {
            ["<C-space>"] = { "show" },
            ["<ESC>"] = { "cancel", "fallback" },
            ["<Tab>"] = { "accept" },
            ["<C-k>"] = { "select_prev", "fallback" },
            ["<C-j>"] = { "select_next", "fallback" },
            ["<C-h>"] = { "hide_documentation", "fallback" },
            ["<C-l>"] = { "show_documentation", "fallback" },
        },

        snippets = { preset = "luasnip"},

        appearance = {
            nerd_font_variant = "mono",
        },

        completion = {
            keyword = { range = "full" },
            list = { selection = { preselect = true } },
            menu = {
                auto_show = false,
                border = "single"
            },
            documentation = {
                window = {
                    border = "single",
                    max_width = 80,
                },
            }
        },

        signature = {
            window = { border = "single" },
            enabled = true,
        },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
}
