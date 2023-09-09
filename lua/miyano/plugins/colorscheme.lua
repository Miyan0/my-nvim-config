local M = {}

M.kanagawa = {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	name = "kanagawa",
	config = function()
		require("kanagawa").setup({
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = false, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			colors = { -- add/modify theme and palette colors
				palette = {},
				theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
			},
			overrides = function(colors) -- add/modify highlights
				return {}
			end,
			theme = "wave", -- Load "wave" theme when 'background' option is not set
			background = { -- map the value of 'background' option to a theme
				dark = "wave", -- try "dragon" !
				light = "lotus",
			},
		})
		vim.cmd([[colorscheme kanagawa]])
	end,
}

M.catppuccin = {
	"catppuccin/nvim",
	priority = 1000,
	lazy = false,
	name = "catppuccin",
	config = function()
		-- require("catppuccin").setup({
		-- 	flavor = "mocha",
		-- 	integration = {
		-- 		cmp = true,
		-- 		gitsigns = true,
		-- 		nvimtree = true,
		-- 		treesitter = true,
		-- 		notify = false,
		-- 		mini = false,
		-- 	},
		-- 	custom_highlights = function(colors)
		-- 		return {
		-- 			-- Comment = { fg = colors.flamingo },
		-- 			TabLineSel = { bg = colors.pink },
		-- 			CmpBorder = { fg = colors.flamingo },
		-- 			-- CmpItemSel = { bg = colors.pink },
		-- 			-- CmpItemAbbrMatch = { bg = colors.pink },
		-- 		}
		-- 	end,
		-- })
		vim.cmd([[colorscheme catppuccin]])
	end,
}

M.aquarium = {
	"frenzyexists/aquarium-vim",
	priority = 1000,
	lazy = false,
	name = "aquarium",
	config = function()
		vim.cmd([[colorscheme aquarium]])
	end,
}

M.nightowl = {
	"oxfist/night-owl.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorschemeV
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme night-owl]])
	end,
}

M.monokeipro = {
	"loctvl842/monokai-pro.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		require("monokai-pro").setup({
			transparent_background = false,
			terminal_colors = true,
			devicons = true, -- highlight the icons of `nvim-web-devicons`
			styles = {
				comment = { italic = true },
				keyword = { italic = true }, -- any other keyword
				type = { italic = true }, -- (preferred) int, long, char, etc
				storageclass = { italic = true }, -- static, register, volatile, etc
				structure = { italic = true }, -- struct, union, enum, etc
				parameter = { italic = true }, -- parameter pass in function
				annotation = { italic = true },
				tag_attribute = { italic = true }, -- attribute of tag in reactjs
			},
			filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
			-- Enable this will disable filter option
			day_night = {
				enable = false, -- turn off by default
				day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
				night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
			},
			inc_search = "background", -- underline | background
			background_clear = {
				-- "float_win",
				"toggleterm",
				"telescope",
				-- "which-key",
				"renamer",
				"notify",
				-- "nvim-tree",
				-- "neo-tree",
				-- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
			}, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
			plugins = {
				bufferline = {
					underline_selected = false,
					underline_visible = false,
				},
				indent_blankline = {
					context_highlight = "default", -- default | pro
					context_start_underline = false,
				},
			},
		})
		vim.cmd([[colorscheme monokai-pro]])
	end,
}

M.nightfly = {
	"bluz71/vim-nightfly-guicolors",
	priority = 1000,
	lazy = false,
	name = "nightfly",
	config = function()
		vim.cmd([[colorscheme nightfly]])
	end,
}

M.codedark = {
	"tomasiser/vim-code-dark",
	priority = 1000,
	lazy = false,
	name = "codedark",
	config = function()
		vim.cmd([[colorscheme codedark]])
	end,
}

M.embark = {
	"embark-theme/vim",
	priority = 1000,
	lazy = false,
	name = "embark",
	config = function()
		vim.cmd([[colorscheme embark]])
	end,
}

-- return M.aquarium
-- return M.monokeipro
return M.catppuccin
-- return M.nightowl
-- return M.nightfly
-- return M.codedark
-- return M.embark
-- return M.kanagawa
