-- ----------------------------------------------------------------------
--- BlankLine
--- ----------------------------------------------------------------------
--- https://github.com/lukas-reineke/indent-blankline.nvim
local M = {}

local highlight = {
  "CursorColumn",
  "Whitespace",
}

M.blankline = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  lazy = false,
  config = function()
    require("ibl").setup({
      indent = {
        highlight = highlight,
        char = "│",
        tab_char = "│",
      },
      -- whitespace = {
      --   highlight = highlight,
      --   remove_blankline_trail = true,
      -- },
      scope = {
        -- highlight = highlight,
        show_start = false,
        show_end = false,
        injected_languages = true,
      },
      exclude = {
        filetypes = {
          "help",
          "terminal",
          "lspinfo",
          "TelescopePrompt",
          "TelescopeResults",
          "nvcheatsheet",
          "lsp-installer",
          "norg",
          "Empty",
          "",
        },
        buftypes = { "terminal", "nofile" },
      },
    })
  end,
}

return M.blankline
