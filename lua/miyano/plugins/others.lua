--================================================================
-- others.lua
--================================================================
-- iyano/plugins/others.lua
-- created: 2023-09-11
-- Place plugins which require almost no configurations here.

return {
  -- delete buffers while keeping window layout
  "famiu/bufdelete.nvim",

  -- linting and formatting
  {
    "jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
    event = { "BufReadPre", "BufNewFile" },
    ft = { "go", "lua" },
    opts = function()
      return require("miyano.configs.null-ls")
    end,
  },

  -- debugging (common)
  {
    "mfussenegger/nvim-dap",
  },

  -- go debugging
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("miyano.configs.mappings").dap()
      require("miyano.configs.mappings").dap_go()
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("miyano.configs.mappings").gopher()
    end,
    build = function()
      vim.cmd([[silent! GoInstallDeps]])
    end,
  },

  -- {
  --   "ray-x/go.nvim",
  --   ft = { "go", "gomod", "gosum", "gowork" },
  --   dependencies = {
  --     {
  --       "ray-x/guihua.lua",
  --       build = "cd lua/fzy && make",
  --     },
  --   },
  --   config = function()
  --     require("miyano.configs.go")
  --   end,
  --   build = ':lua require("go.install").update_all_sync()',
  -- },
  --
  -- maximize window
  {
    "szw/vim-maximizer",
    keys = {
      { "<leader>sm", "<cmd>MaximizerToggle<CR>" },
    },
  },
  -- escape remapping
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      -- lua, default settings
      require("better_escape").setup({
        mapping = { "jk" }, -- a table with mappings to use
        timeout = vim.o.timeoutlen,
        clear_empty_lines = false,
        keys = "<Esc>",
      })
    end,
  },

  -- inline colors
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },

  -- nicer select and inputs
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },

  -- git icons
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },

    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "│" },
          change = { text = "│" },
          delete = { text = "󰍵" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
          untracked = { text = "│" },
        },
      })
    end,
  },

  -- git management
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
  },

  -- snippets
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "2.*",               -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    dependencies = {
      "rafamadriz/friendly-snippets", -- useful snippets
    },
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
  },

  -- comment lines or blocks
  {
    "numToStr/Comment.nvim",
    event = { "BufRead", "BufNewFile" },
    config = function()
      require("Comment").setup({
        ignore = "^$",
        toggler = {
          line = "<leader>/",
          block = "<c-/>",
        },
        opleader = {
          line = "<leader>/",
          block = "<c-/>",
        },
      })
    end,
    --[[ config = function()
      local keymap = vim.keymap -- for conciseness

      -- copied from nvchad mappings
      keymap.set("n", "<c-/>", function()
        require("Comment.api").toggle.linewise.current()
      end, { desc = "Toggle Comment" })

      keymap.set(
        "v",
        "<c-/>",
        "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
        { desc = "Toggle Comment" }
      )
    end, ]]
  },

  -- todos
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function()
    -- require("todo-comments").setup {}
    --
    -- end,
    opts = {},
    event = "BufRead",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOS in Telescope" },
    },
  },

  -- bracket colorizer
  {
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
  },

  -- keybinding remainder
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    opts = {},
  },
}
