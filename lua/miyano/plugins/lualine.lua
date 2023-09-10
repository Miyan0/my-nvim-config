return {

	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
		local copilot_status = require("copilot_status")
		local copilot_enabled = copilot_status.enabled()
		print("copilot status? = ", copilot_status.status_string())

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				-- theme = "aquarium",
				icon_enabled = true,
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				-- lualine_b = { { "b:gitsigns_head", icon = "" } },
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					{ "fileformat" },
					{
						copilot_status.status_string(),
						-- cond = copilot_enabled,
					},

					{ "filetype" },
				},
			},
		})
	end,
}
