return {
	"nvim-flutter/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	config = true,
	keys = {
		{ "<leader>Fr", "<cmd>FlutterDebug<cr>", desc = "Flutter Run" },
		{ "<leader>Fd", "<cmd>FlutterDevices<cr>", desc = "Flutter Devices" },
		{ "<leader>Fe", "<cmd>FlutterEmulators<cr>", desc = "Flutter Emulators" },
		{ "<leader>FR", "<cmd>FlutterReload<cr>", desc = "Flutter Reload" },
		{ "<leader>FS", "<cmd>FlutterRestart<cr>", desc = "Flutter Restart" },
		{ "<leader>Fq", "<cmd>FlutterQuit<cr>", desc = "Flutter Quit" },
		{ "<leader>Fl", "<cmd>FlutterLogToggle<cr>", desc = "Flutter Logs" },
		{
			"<leader>Fa",
			function()
				require("telescope").extensions.flutter.commands()
			end,
			desc = "Open command Flutter",
		},
	},
}
