local M = {}

M.on_attach_lsp = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }
	local keymap = vim.keymap -- for conciseness

	-- set keybinds
	opts.desc = "Show LSP references"
	keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

	opts.desc = "Go to declaration"
	keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

	opts.desc = "Show LSP definitions"
	-- keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions
	keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- show lsp definitions

	opts.desc = "Show LSP implementations"
	keymap.set("n", "gi", vim.lsp.buf.implementation, opts) -- show lsp implementations

	opts.desc = "Show LSP type definitions"
	keymap.set("n", "gt", vim.lsp.buf.type_definition, opts) -- show lsp type definitions

	-- see available code actions, in visual mode will apply to selection
	opts.desc = "See available code actions"
	keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
	-- opts.desc = "Smart rename"
	-- keymap.set("n", "<leader>rn", ":IncRename ", opts) -- smart rename

	opts.desc = "Show buffer diagnostics"
	keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

	opts.desc = "Show line diagnostics"
	keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

	opts.desc = "Go to previous diagnostic"
	keymap.set("n", " dj", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

	opts.desc = "Go to next diagnostic"
	keymap.set("n", " dk", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

	opts.desc = "Show documentation for what is under cursor"
	keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

	opts.desc = "Restart LSP"
	keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary

	-- typescript specific keymaps (e.g. rename file and update imports)
	if client.name == "tsserver" then
		opts.desc = "Rename file and update file imports"
		keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>") -- rename file and update imports

		opts.desc = "Rename file and update file imports"
		keymap.set("n", "<leader>oi", ":TypescriptOrganizeImports<CR>", opts) -- organize imports (not in youtube nvim video)

		opts.desc = "Remove unused imports"
		keymap.set("n", "<leader>ru", ":TypescriptRemoveUnused<CR>", opts) -- remove unused variables (not in youtube nvim video)
	end
end

return M
