return {
	"numToStr/Comment.nvim",
	keys = {
    { "gcc", mode = "n", desc = "Comment toggle current line" },
		{ "gc", mode = "x", desc = "Comment toggle linewise (visual)" },
	},
	config = function(_, opts)
		require("Comment").setup(opts)
	end,
}
