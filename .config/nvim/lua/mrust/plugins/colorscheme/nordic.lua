return  {
    "AlexvZyl/nordic.nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
        require("nordic").load({
            styles = {
                italic = false,
                transparency = true,
            },
            highlight_groups = {
                Comment = {
                    italic = true
                },
                Keywords = {
                    italic = false
                }
            }
        })
        vim.cmd("colorscheme nordic")
    end,
}
