return {
	{
		"folke/snacks.nvim",
		opts = {
			styles = {
				terminal = {
					height = 0.95,
					width = 0,
					row = 0.1,
					backdrop = 60,
					zindex = 50,
					relative = "editor",
					position = "float",
					border = "rounded",
					wo = {
						winbar = "%{v:count1}: %{get(b:, 'term_title', '')}",
					},
					keys = {
						q = "close",
					},
				},
			},
		},
	},
}
