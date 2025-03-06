return {
    "aktersnurra/no-clown-fiesta.nvim",
    config = function ()
        require("no-clown-fiesta").setup({
            transparent = true,
            styles = {
            }
        })
        return require("no-clown-fiesta").load()
    end
}
