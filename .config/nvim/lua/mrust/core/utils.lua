local M = {}

M.dwindle_split = function ()
    local win = vim.api.nvim_get_current_win()
    local width = vim.api.nvim_win_get_width(win)
    local height = vim.api.nvim_win_get_height(win)
    if width*9 > height*21 then
        vim.cmd("vsplit")
    else
        vim.cmd("split")
    end
end


local term_buffer = -1
local function open_term()
    if not vim.api.nvim_buf_is_valid(term_buffer) then
        vim.cmd("term")
        term_buffer = vim.api.nvim_get_current_buf()
        vim.api.nvim_buf_set_option(term_buffer, "scrolloff", 0)
        vim.api.nvim_buf_set_option(term_buffer, "number", false)
        vim.api.nvim_buf_set_option(term_buffer, "relativenumber", false)
    end

    vim.api.nvim_win_set_buf(vim.api.nvim_get_current_win(), term_buffer)
    vim.api.nvim_buf_create_user_command(0, "TermHide", function ()
        vim.api.nvim_win_hide(0)
    end, {})
    vim.api.nvim_buf_set_keymap(0, "n", "<C-d>", ":TermHide<CR>", {})
end

M.open_split_term = function ()
    M.dwindle_split()
    open_term()
end

M.open_tab_term = function ()
    vim.cmd("tabnew")
    
    open_term()
end

return M
