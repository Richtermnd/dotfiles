return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-fzf-native.nvim"
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local init_dir = vim.fn.getcwd()
        telescope.setup({
            extensions = {
                fzf = {
                    fuzzy = true,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"                                   -- the default case_mode is "smart_case"
                },
            },
            defaults = {
                cwd = init_dir,
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist,
                    },
                },
            },
        })
        telescope.load_extension("fzf")

        -- set keymaps
        local builtin = require("telescope.builtin")
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>ff",
            function ()
                builtin.find_files({cwd=init_dir})
            end,
            { desc = "Find files" })
        keymap.set("n", "<leader>fg",
            function ()
                builtin.live_grep({cwd=init_dir})
            end,
            { desc = "Live grep" })
    end,
}

