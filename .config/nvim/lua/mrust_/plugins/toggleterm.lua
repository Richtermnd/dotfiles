return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function ()
    local term = require("toggleterm")
    term.setup({
      size = 100,
      open_mapping = [[<c-\>]],
      direction="vertical",
    })
  end
}
