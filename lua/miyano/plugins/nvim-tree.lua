return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- change color for arrows in tree to light blue
--    vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

    -- configure nvim-tree
    nvimtree.setup({
      view = {
        width = 45,
      },
      -- change folder arrow icons
--      renderer = {
--        icons = {
--          glyphs = {
--            folder = {
--              arrow_closed = "", -- arrow when folder is closed
--              arrow_open = "", -- arrow when folder is open
--            },
--          },
--        },
--      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus <CR>", { desc = "Focus NvimTree" })
    keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle NvimTree" }) 
  end,
}
