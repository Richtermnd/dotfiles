return  {
    "AlexvZyl/nordic.nvim",
    version = false,
    lazy = false,
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
    end,
}
