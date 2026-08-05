return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        "kanagawa",
        "kanagawa-dragon",
        "kanagawa-lotus",
        "kanagawa-lotus",
        "cyberdream",
        "terafox",
        "nightfox",
        "carbonfox",
        "everforest",
        "tokyonight",
      },
    })
  end,
}
