return {
	"nvim-flutter/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	config = true,
	keys = {
		{ "<leader>Fd", "<cmd>FlutterDebug<cr>", desc = "Flutter Debug" },
		{ "<leader>Fr", "<cmd>FlutterRun<cr>", desc = "Flutter Run" },
		{ "<leader>FD", "<cmd>FlutterDevices<cr>", desc = "Flutter Devices" },
		{ "<leader>Fe", "<cmd>FlutterEmulators<cr>", desc = "Flutter Emulators" },
		{ "<leader>FR", "<cmd>FlutterReload<cr>", desc = "Flutter Reload" },
		{ "<leader>FS", "<cmd>FlutterRestart<cr>", desc = "Flutter Restart" },
		{ "<leader>Fq", "<cmd>FlutterQuit<cr>", desc = "Flutter Quit" },
		{ "<leader>Fl", "<cmd>FlutterLogToggle<cr>", desc = "Flutter Logs" },
		{ "<leader>Fc", "<cmd>FlutterLogClear<cr>", desc = "Flutter Logs Clear" },
		{
			"<leader>Fa",
			function()
				require("telescope").extensions.flutter.commands()
			end,
			desc = "Open command Flutter",
		},
	},
}
