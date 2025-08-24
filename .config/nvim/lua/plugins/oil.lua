return {
    'stevearc/oil.nvim',
    dependencies = { { "nvim-tree/nvim-web-devicons"} },
    config = function ()
        require("oil").setup({
            default_file_explorer = true,
            columns = {
                "permissions",
                "size",
                "mtime",
                "icon",
            },
            keymaps = {
                ["L"] = {"actions.select"},
                ["H"] = {"actions.parent"},
                ["<C-h>"] = {"<cmd>TmuxNavigateLeft<Enter>"},
                ["<C-l>"] = {"<cmd>TmuxNavigateRight<Enter>"},
            }
        })

        vim.keymap.set("n", "<leader>ee", "<CMD>Oil<CR>")
    end
}
