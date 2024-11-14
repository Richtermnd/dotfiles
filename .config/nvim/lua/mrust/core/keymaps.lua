vim.g.mapleader = " "

-- Alias
local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search higlighting" })
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Write" })


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

-- commenting
keymap.set("n", "<leader>/", "gcc", { noremap = true, silent = true })
keymap.set("v", "<leader>/", "gc", { noremap = true, silent = true })

-- Russian keybinds
keymap.set("n", "р", "h")
keymap.set("n", "о", "j")
keymap.set("n", "л", "k")
keymap.set("n", "д", "l")
keymap.set("v", "р", "h")
keymap.set("v", "о", "j")
keymap.set("v", "л", "k")
keymap.set("v", "д", "l")

keymap.set("n", "м", "v")
keymap.set("n", "ф", "a")
keymap.set("n", "ш", "i")
keymap.set("n", "у", "e")
keymap.set("n", "ц", "w")
keymap.set("n", "и", "b")
keymap.set("n", "с", "c")
keymap.set("n", "ч", "x")
keymap.set("n", "н", "y")
keymap.set("n", "з", "p")
