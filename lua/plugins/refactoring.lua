return {
	-- Incremental rename

	"smjonas/inc-rename.nvim",
	cmd = "IncRename",
	require("noice").setup({
		presets = { inc_rename = true },
	}),
	config = true,
}
