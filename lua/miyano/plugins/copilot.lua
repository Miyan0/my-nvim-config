return {
  -- copied from LazyVim extras

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",

    config = function()
      require("copilot").setup({
        suggestion = { enabled = false }, -- let copilot-cmp do its things
        panel = { enabled = false },
        filetypes = {
          markdown = true,
          help = true,
          lua = true,
          vim = true,
          typescript = true,
          typescriptreact = true,
          javascript = true,
          javascriptreact = true,
          html = true,
          css = true,
          golang = true,
        },
      })
    end,
  },

  {
    "jonahgoldwastaken/copilot-status.nvim",
    event = "BufReadPost",
    lazy = true,
    config = function()
      require("copilot_status").setup({
        icons = {
          idle = " ",
          error = " ",
          offline = " ",
          warning = " ",
          loading = " ",
        },
        debug = false,
      })
    end,
  },
}
