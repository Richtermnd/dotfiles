return {
    'echasnovski/mini.nvim',
    version = false,
    config = function ()
        require("mini.icons").setup()
        require("mini.git").setup()
        require("mini.move").setup()
        require("mini.pairs").setup()
        local indentscope = require("mini.indentscope")
        indentscope.setup({
            draw = {
                delay = 0,
                animation = indentscope.gen_animation.none(),
            }
        })
        local files = require("mini.files")
        files.setup({})
        vim.keymap.set("n", "<leader>ee", files.open)
    end
}