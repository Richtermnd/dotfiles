local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search higlighting" })
keymap.set("n", "<leader>w", ":wa<CR>", { desc = "Write" })
keymap.set("v", "p", "P")

-- diagnostic
keymap.set('n', '<leader>dl', vim.diagnostic.setqflist, { desc = 'Open diagnostics list' })

keymap.set("t", "<ESC>", "<C-\\><C-N>")

vim.keymap.set("n", "<leader>ee", "<CMD>Oil<CR>")

keymap.set("n", "<leader>ff", require("fzf-lua").files)
keymap.set("n", "<leader>fb", require("fzf-lua").buffers)
keymap.set("n", "<leader>fq", require("fzf-lua").quickfix)
keymap.set("n", "<leader>fg", require("fzf-lua").live_grep)


vim.diagnostic.enable(false)
local diagnostic_state = false
vim.api.nvim_create_user_command("ToggleDiagnostic", function()
	diagnostic_state = not diagnostic_state
	vim.diagnostic.enable(diagnostic_state)
end, {})
keymap.set("n", "<leader>tg", ":ToggleDiagnostic<CR>")


io.input()
