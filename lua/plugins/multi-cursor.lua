return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    -- Optional: remap Ctrl+D to visual-multi style
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>",
      ["Find Subword Under"] = "<C-d>",
      ["Select All"] = "<C-a>",
      ["Select Next"] = "<C-d>",
      ["Select Prev"] = "<C-p>",
      ["Exit"] = "<Esc>",
    }
  end,
}
