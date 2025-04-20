return {
  "nvim-lualine/lualine.nvim",
  config = function()
    -- Transparent highlights
    vim.cmd([[
      highlight Normal guibg=NONE ctermbg=NONE
      highlight NormalNC guibg=NONE ctermbg=NONE
      highlight NvimTreeNormal guibg=NONE ctermbg=NONE
      highlight EndOfBuffer guibg=NONE ctermbg=NONE
      highlight VertSplit guibg=NONE ctermbg=NONE
      highlight StatusLine guibg=NONE ctermbg=NONE
      highlight SignColumn guibg=NONE ctermbg=NONE
    ]])

    require("lualine").setup({
      options = {
        theme = "auto",
        section_separators = "",
        component_separators = "",
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" }, -- ✅ shows current mode
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
