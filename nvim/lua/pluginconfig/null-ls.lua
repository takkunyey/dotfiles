require("null-ls").setup({
	sources = {
		require("null-ls").builtins.code_actions.eslint,
		require("null-ls").builtins.diagnostics.eslint,
		require("null-ls").builtins.formatting.stylua,
		require("null-ls").builtins.formatting.elm_format,
	},
})
