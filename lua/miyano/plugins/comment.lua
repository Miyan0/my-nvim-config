return {
  "numToStr/Comment.nvim",
  event = {"BufRead", "BufNewFile"},
  config = function()
    local keymap = vim.keymap -- for conciseness

    -- copied from nvchad mappings
    keymap.set(
      "n",
      "<leader>/",
     function()
        require("Comment.api").toggle.linewise.current()
      end,
      { desc = "Toggle Comment" }
    )

    keymap.set(
      "v",
      "<leader>/",
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      { desc = "Toggle Comment" }
    )
  end,
}
