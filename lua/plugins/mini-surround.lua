return {
  "echasnovski/mini.surround",
  event = "VeryLazy",
  config = function()
    local mini_surround = require("mini.surround")

    mini_surround.setup({
      mappings = {
        add = "gsa", -- Add surrounding
        delete = "gsd", -- Delete surrounding
        replace = "gsr", -- Replace surrounding
        find = "gsf", -- Find right surrounding
        find_left = "gsF", -- Find left surrounding
        highlight = "gsh", -- Highlight surrounding
        update_n_lines = "gsn", -- Update `n_lines`
      },
    })
  end,
}
