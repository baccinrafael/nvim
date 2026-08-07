return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        "kanagawa",
        "kanagawa-dragon",
        "kanagawa-lotus",
        "kanagawa-wave",
        "cyberdream",
        "terafox",
        "nightfox",
        "carbonfox",
        "everforest",
        "tokyonight",
        "synthwave84",
        "vscode",
        "vague",
      },
    })
  end,
}
