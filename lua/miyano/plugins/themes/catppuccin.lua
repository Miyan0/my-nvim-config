--================================================================
-- catppuccin.lua
--================================================================
-- lua/miyano/plugins/themes/catppuccin.lua
-- created: 2023-09-10

return {
  "catppuccin/nvim",
  priority = 1000,
  lazy = false,
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      compile = {
        enabled = true,
        path = vim.fn.stdpath("cache") .. "/catppuccin",
        suffix = "_compiled",
      },

      highlight_overrides = {
        all = function(colors)
          return {
            PmenuSel = { bg = colors.mauve, fg = colors.base },
            TabLineSel = { bg = colors.mauve, fg = colors.mauve },
            Cursor = { bg = colors.mauve, fg = colors.base },
            -- FloatBorder = { bg = "#3c3836" },
            -- NormalFloat = { bg = colors.mauve, fg = colors.base },
          }
        end,
      },

      dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
      },
      transparent_background = true,
      term_colors = true,

      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },

      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
        coc_nvim = false,
        lsp_trouble = false,
        cmp = true,
        lsp_saga = false,
        gitgutter = true,
        gitsigns = true,
        telescope = true,
        nvimtree = {
          enabled = false,
          show_root = true,
          transparent_panel = false,
        },
        dap = {
          enabled = true,
          enable_ui = true, -- enable nvim-dap-ui
        },
        neotree = {
          enabled = true,
          show_root = true,
          transparent_panel = false,
        },
        which_key = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
        dropbar = {
          enabled = true,
        },
        alpha = true,
        dashboard = false,
        neogit = true,
        vim_sneak = false,
        fern = false,
        barbar = false,
        bufferline = true,
        markdown = true,
        lightspeed = false,
        ts_rainbow = false,
        hop = false,
        notify = true,
        telekasten = false,
        symbols_outline = true,
        mini = true,
        fidget = false,
      },
    })
    vim.cmd([[colorscheme catppuccin-macchiato]])
  end,
}
