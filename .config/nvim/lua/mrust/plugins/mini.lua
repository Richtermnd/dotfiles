return {
    'echasnovski/mini.nvim',
    version = false,
    config = function()
        require("mini.icons").setup()
        require("mini.git").setup()
        require("mini.move").setup()
        require("mini.pairs").setup()
    end
}
