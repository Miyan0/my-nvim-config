require("nightowl").setup({
	priority = 1000, -- make sure to load this before all the other start plugins
})

vim.cmd("colorscheme " .. vim.g.config.theme.nightowl.variant)
