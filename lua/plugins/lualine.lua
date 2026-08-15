return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "filetype" },
        lualine_y = {
          function()
            return "󰅐 " .. os.date("%H:%M")
          end,
        },
        lualine_z = { "location" },
      },
      winbar = {}, -- desativa o lualine no topo
      inactive_winbar = {},
    })
  end,
}
