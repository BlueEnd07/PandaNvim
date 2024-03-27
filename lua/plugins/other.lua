return {
	{
		"echasnovski/mini.hipatterns",
		event = "BufReadPre",
		opts = {},
	},
	{
		"themaxmarchuk/tailwindcss-colors.nvim",
		-- load only on require("tailwindcss-colors")
		module = "tailwindcss-colors",
		config = function()
			require("tailwindcss-colors").setup()
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
  {
    'folke/lsp-colors.nvim'
  }
}
