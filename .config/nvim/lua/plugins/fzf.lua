return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    dependencies = { "echasnovski/mini.icons" },
    config = function ()
        local fzf = require("fzf-lua")
        local keymap = vim.keymap -- for conciseness
        keymap.set("n", "<leader>ff", fzf.files)
        keymap.set("n", "<leader>fb", fzf.buffers)
        keymap.set("n", "<leader>fq", fzf.quickfix)
        keymap.set("n", "<leader>fg", fzf.live_grep)
    end
}
