return {
    'stevearc/oil.nvim',
    dependencies = { { "nvim-tree/nvim-web-devicons"} },
    config = function ()
        require("oil").setup({
            default_file_explorer = true,
            keymaps = {
                ["L"] = {"actions.select"},
                ["H"] = {"actions.parent"},
            }
        })

        vim.keymap.set("n", "<leader>ee", "<CMD>Oil<CR>")
    end
}
