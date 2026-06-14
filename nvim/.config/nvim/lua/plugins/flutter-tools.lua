return {
	"nvim-flutter/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	opts = {
		-- Add default flavor argument for dev development
		flutter_path = nil, -- uses system flutter
		fvm = false,
		widget_guides = { enabled = true },
		closing_tags = {
			highlight = "Comment",
			prefix = "// ",
			enabled = true,
		},
		dev_log = {
			enabled = true,
			notify_errors = false,
		},
		lsp = {
			color = { enabled = true },
			settings = {
				showTodos = true,
				completeFunctionCalls = true,
				renameFilesWithClasses = "prompt",
				enableSnippets = true,
			},
		},
		-- Set default flavor to 'dev' for medcare project.
		-- --dart-define-from-file is required so String.fromEnvironment(...) in
		-- lib/core/services/environment_service.dart resolves CONVEX_URL etc.
		-- Without it the Convex client errors with "relative URL without a base".
		default_run_args = { flutter = "--flavor dev --dart-define-from-file=config/dev.json" },
	},
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
