-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set({ "n", "i" }, "<C-q>", "<cmd> qa <CR>", { desc = "Quit without saving" })
--save
keymap.set("n", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })

keymap.set("n", "<leader>x", "<cmd> lua require('bufdelete').bufdelete(0, true) <CR>", { desc = "Close buffer" })

-- clear search highlights
keymap.set("n", "<Esc>", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })                   -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })                 -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })                    -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })               -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })                     -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })              -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })                     --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })                 --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- =================================================
--   Copied from NvChad /lua/core/mappings.lua
-- =================================================

-- window management
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })

-- buffer management
keymap.set("n", "<tab>", "<cmd>BufferLineCycleNext <CR>", { desc = "Next buffer" })
keymap.set("n", "<S-tab>", "<cmd>BufferLineCyclePrev <CR>", { desc = "Previous buffer" })

--Copy all
keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })

-- new buffer
keymap.set("n", "<leader>b", "<cmd> enew <CR>", { desc = "New buffer" })

-- inline annotations
keymap.set("n", "<leader>bi", function()
  require("nvim-biscuits").toggle_biscuits()
end, { desc = "󰆘 Toggle context" })

-- terminal
keymap.set("n", "<C-`>", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Toggle terminal" })

keymap.set("t", "<C-`>", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Toggle terminal" })

-- renamer keybinds:while true do
keymap.set(
  "i",
  "<F2>",
  '<cmd>lua require("renamer").rename()<cr>',
  { noremap = true, silent = true, desc = "Buffer Rename" }
)
keymap.set(
  "n",
  "<leader>rn",
  '<cmd>lua require("renamer").rename()<cr>',
  { noremap = true, silent = true, desc = "Buffer Rename" }
)
keymap.set(
  "v",
  "<leader>rn",
  '<cmd>lua require("renamer").rename()<cr>',
  { noremap = true, silent = true, desc = "Buffer  Rename" }
)
