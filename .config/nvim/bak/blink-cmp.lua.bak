return {
    "saghen/blink.cmp",
    dependencies = {
        "L3MON4D3/LuaSnip",
    },

    version = '1.*',

    opts = {
        keymap = {
            ["<C-space>"] = { "show" },
            ["<ESC>"] = { "cancel", "fallback" },
            ["<Tab>"] = { "accept", "fallback" },
            ["<C-k>"] = { "select_prev", "fallback" },
            ["<C-j>"] = { "select_next", "fallback" },
            ["<C-l>"] = { function(cmp)
                if require("blink.cmp").is_documentation_visible() then
                    return cmp.hide_documentation()
                else
                    return cmp.show_documentation()
                end
            end, "fallback" },
        },

        snippets = { preset = "luasnip"},

        appearance = {
            nerd_font_variant = "mono",
        },

        completion = {
            keyword = { range = "full" },
            list = { selection = { preselect = true } },
            menu = {
                auto_show = true,
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
            default = { "lazydev", "lsp", "path", "snippets", "buffer" },
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    -- make lazydev completions top priority (see `:h blink.cmp`)
                    score_offset = 100,
                },
            },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
}
