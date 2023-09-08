-- ----------------------------------------------------------------------
--- HEAD
--- ----------------------------------------------------------------------
--- https://github.com/lukas-reineke/indent-blankline.nvim

local hl_list = {}

for i, color in pairs({ "#662121", "#767621", "#216631", "#325a5e", "#324b7b", "#562155" }) do
	local name = "IndentBlanklineIndent" .. i
	vim.api.nvim_set_hl(0, name, { fg = color })
	table.insert(hl_list, name)
end

return {
	"lukas-reineke/indent-blankline.nvim",
	lazy = false,
	config = function()
		require("indent_blankline").setup({
			-- extra stuff
			char = "│",
			-- char = "▎",
			char_highlight_list = hl_list,
			space_char_highlight_list = hl_list,

			filetype_exclude = {
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

			buftype_exclude = { "terminal", "nofile" },
			show_end_of_line = true,
			show_foldtext = true,
			show_trailing_blankline_indent = false,
			show_first_indent_level = true,
			show_current_context = true,
			show_current_context_start = true,
		})
	end,
}

-- require("indent-blankline").setup({
-- 	-- extra stuff
-- 	char_highlight_list = hl_list,
-- 	-- extra stuff
-- }),
