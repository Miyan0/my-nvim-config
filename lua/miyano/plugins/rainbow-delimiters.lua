--================================================================
-- rainbow-delimiters.lua
--================================================================
-- lua/miyano/plugins/rainbow-delimiters.lua
-- created: 2023-09-13
-- bracket colorizer

return {
  "hiphish/rainbow-delimiters.nvim",
  event = "BufReadPost",

  config = function()
    local rainbow_delimiters = require("rainbow-delimiters")

    vim.g.rainbow_delimiters = {
      strategy = {
        [""] = rainbow_delimiters.strategy["global"],
        vim = rainbow_delimiters.strategy["local"],
      },
      query = {
        [""] = "rainbow-delimiters",
        lua = "rainbow-blocks",
      },
      highlight = {
        "RainbowDelimiterCyan",
        "RainbowDelimiterYellow",
        "RainbowDelimiterBlue",
        "RainbowDelimiterOrange",
        "RainbowDelimiterGreen",
        "RainbowDelimiterViolet",
        "RainbowDelimiterRed",
      },
    }
  end,
}
