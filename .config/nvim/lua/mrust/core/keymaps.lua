vim.g.mapleader = " "
local utils = require("mrust.core.utils")
-- Alias
local keymap = vim.keymap

-- QoL
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search higlighting" })
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Write" })
keymap.set("v", "p", "P")


-- window management

keymap.set("n", "<leader>sz", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sx", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>ss", utils.dwindle_split, { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sc", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height

-- tabs management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Bind <leader>t + digit to open tab by number
for i = 1, 9 do
  vim.api.nvim_set_keymap('n', '<leader>t' .. i, ':tabn ' .. i .. '<CR>', { noremap = true, silent = true })
end

-- commenting
keymap.set("n", "<leader>/", "gcc", { noremap = true, silent = true })
keymap.set("v", "<leader>/", "gc", { noremap = true, silent = true })

-- diagnostic
keymap.set("n", "<leader>dd", vim.diagnostic.open_float)
keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- terminal
keymap.set("t", "<ESC>", "<C-\\><C-N>")
keymap.set("n", "<leader>st", utils.open_split_term)
keymap.set("n", "<leader>tt", utils.open_tab_term)
