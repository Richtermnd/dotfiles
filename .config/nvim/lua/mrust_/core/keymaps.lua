vim.g.mapleader = " "

-- Alias
local keymap = vim.keymap

-- keymap.set("n", "<leader>ee", function()
--   vim.cmd(":w")
--   vim.cmd(":Ex")
-- end, { desc = "Open explorer" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search higlighting" })


-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
-- Bind <leader>t + digit to open tab by number
for i = 1, 9 do
  vim.api.nvim_set_keymap('n', '<leader>t' .. i, ':tabn ' .. i .. '<CR>', { noremap = true, silent = true })
end
