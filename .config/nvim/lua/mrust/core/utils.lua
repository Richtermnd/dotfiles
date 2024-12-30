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


local function interactiveList()
    
end

M.lsp_actions = function (opts)
    -- Create float window under cursor
    opts = opts or {}
    local buf = vim.api.nvim_create_buf(false, true)

    local cursor_position = vim.api.nvim_win_get_cursor(0)
    local win_position = vim.api.nvim_win_get_position(0)
    local row = win_position[1] + cursor_position[1] - vim.fn.line("w0") + 1;
    local col = win_position[2] + cursor_position[2];

    vim.api.nvim_open_win(buf, true, {
        relative="editor",
        width = 20,
        height = 5,
        row = row,
        col = col,
        style = "minimal",
        border = "single",
    })

    -- interactive list
    local actions = {
        {
            name = "rename",
            action = vim.lsp.buf.rename
        },
        {
            name = "references",
            action = vim.lsp.buf.references
        }
    }

    -- vim.api.nvim_buf_set_lines(buf, 0, -1, false, )
end

vim.api.nvim_create_user_command("LspActions", M.lsp_actions, {})

return M
