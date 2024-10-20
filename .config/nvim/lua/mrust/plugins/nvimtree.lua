return {
    "nvim-tree/nvim-tree.lua",
    config = function ()
        local ntree = require("nvim-tree")
        vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")
        local function on_attach(bufnr)
            local api = require("nvim-tree.api")

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- custom mappings
            local set = vim.keymap.set
            set("n", "?", api.tree.toggle_help, opts("Help"))
            set("n", "<CR>", api.tree.change_root_to_node, opts("cd"))
            set("n", "l", api.node.open.edit, opts("Open"))
        end
        ntree.setup({
            on_attach = on_attach
        })
    end
}
