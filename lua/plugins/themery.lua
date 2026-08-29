return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        "kanagawa",
        "kanagawa-dragon",
        "moonfly",
        "cyberdream",
        "citruszest",
        "terafox",
        "nightfox",
        "carbonfox",
        "everforest",
        "tokyonight",
        "synthwave84",
        "vscode",
        "vague",
        "luna",
        "kanagawa-lotus",
      },
    })
  end,
}
