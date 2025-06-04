
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
                    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                }
            },
            defaults = require("telescope.themes").get_ivy({
                cwd = init_dir,
                file_ignore_patterns = {
                    "node_modules/",
                    "venv/",
                    "dist/",
                    ".git/",
                    "build/",
                    "__pycache__/"
                },
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.send_to_qflist,
                    },
                },
            }),
        })
        telescope.load_extension("fzf")

        -- set keymaps
        local builtin = require("telescope.builtin")
        local keymap = vim.keymap -- for conciseness

        local function w(f)
            return function () f({cwd=init_dir, hidden=true}) end
        end
        keymap.set("n", "<leader>ff", w(builtin.find_files), { desc = "Find files" })
        keymap.set("n", "<leader>fg", w(builtin.live_grep), { desc = "Live grep" })
        keymap.set("n", "<leader>fb", w(builtin.buffers), { desc = "Buffers" })
    end,
}

