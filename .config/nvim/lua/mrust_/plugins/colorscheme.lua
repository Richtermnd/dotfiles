return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  config = function ()
    local rp = require("rose-pine")
    rp.setup({
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
    vim.cmd("colorscheme rose-pine")
  end
}
