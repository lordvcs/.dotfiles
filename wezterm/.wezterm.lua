-- WezTerm Keybindings Documentation by dragonlobster
-- ===================================================
-- Leader Key:
-- The leader key is set to ALT + q, with a timeout of 2000 milliseconds (2 seconds).
-- To execute any keybinding, press the leader key (ALT + q) first, then the corresponding key.

-- Keybindings:
-- 1. Tab Management:
--    - LEADER + c: Create a new tab in the current pane's domain.
--    - LEADER + x: Close the current pane (with confirmation).
--    - LEADER + b: Switch to the previous tab.
--    - LEADER + n: Switch to the next tab.
--    - LEADER + <number>: Switch to a specific tab (0–9).

-- 2. Pane Splitting:
--    - LEADER + |: Split the current pane horizontally into two panes.
--    - LEADER + -: Split the current pane vertically into two panes.

-- 3. Pane Navigation:
--    - LEADER + h: Move to the pane on the left.
--    - LEADER + j: Move to the pane below.
--    - LEADER + k: Move to the pane above.
--    - LEADER + l: Move to the pane on the right.

-- 4. Pane Resizing:
--    - LEADER + LeftArrow: Increase the pane size to the left by 5 units.
--    - LEADER + RightArrow: Increase the pane size to the right by 5 units.
--    - LEADER + DownArrow: Increase the pane size downward by 5 units.
--    - LEADER + UpArrow: Increase the pane size upward by 5 units.

-- 5. Status Line:
--    - The status line indicates when the leader key is active, displaying an ocean wave emoji (🌊).

-- Miscellaneous Configurations:
-- - Tabs are shown even if there's only one tab.
-- - The tab bar is located at the bottom of the terminal window.
-- - Tab and split indices are zero-based.

-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end
-- config.enable_csi_u_key_encoding = true
-- config.send_composed_key_when_left_alt_is_pressed = false
-- config.send_composed_key_when_right_alt_is_pressed = false

default_copy_mode_keys = {
	{ key = "Tab", mods = "NONE", action = wezterm.action.CopyMode("MoveForwardWord") },
	{
		key = "Tab",
		mods = "SHIFT",
		action = wezterm.action.CopyMode("MoveBackwardWord"),
	},
	{
		key = "Enter",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveToStartOfNextLine"),
	},
	{
		key = "Escape",
		mods = "NONE",
		action = wezterm.action.Multiple({
			{ CopyMode = "MoveToViewportBottom" },
			{ CopyMode = "Close" },
		}),
	},
	{
		key = "Space",
		mods = "NONE",
		action = wezterm.action.CopyMode({ SetSelectionMode = "Cell" }),
	},
	{
		key = "$",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveToEndOfLineContent"),
	},
	{
		key = "$",
		mods = "SHIFT",
		action = wezterm.action.CopyMode("MoveToEndOfLineContent"),
	},
	{ key = ",", mods = "NONE", action = wezterm.action.CopyMode("JumpReverse") },
	{ key = "0", mods = "NONE", action = wezterm.action.CopyMode("MoveToStartOfLine") },
	{ key = ";", mods = "NONE", action = wezterm.action.CopyMode("JumpAgain") },
	{
		key = "F",
		mods = "NONE",
		action = wezterm.action.CopyMode({ JumpBackward = { prev_char = false } }),
	},
	{
		key = "F",
		mods = "SHIFT",
		action = wezterm.action.CopyMode({ JumpBackward = { prev_char = false } }),
	},
	{
		key = "G",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveToScrollbackBottom"),
	},
	{
		key = "G",
		mods = "SHIFT",
		action = wezterm.action.CopyMode("MoveToScrollbackBottom"),
	},
	{ key = "H", mods = "NONE", action = wezterm.action.CopyMode("MoveToViewportTop") },
	{
		key = "H",
		mods = "SHIFT",
		action = wezterm.action.CopyMode("MoveToViewportTop"),
	},
	{
		key = "L",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveToViewportBottom"),
	},
	{
		key = "L",
		mods = "SHIFT",
		action = wezterm.action.CopyMode("MoveToViewportBottom"),
	},
	{
		key = "M",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveToViewportMiddle"),
	},
	{
		key = "M",
		mods = "SHIFT",
		action = wezterm.action.CopyMode("MoveToViewportMiddle"),
	},
	{
		key = "O",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveToSelectionOtherEndHoriz"),
	},
	{
		key = "O",
		mods = "SHIFT",
		action = wezterm.action.CopyMode("MoveToSelectionOtherEndHoriz"),
	},
	{
		key = "T",
		mods = "NONE",
		action = wezterm.action.CopyMode({ JumpBackward = { prev_char = true } }),
	},
	{
		key = "T",
		mods = "SHIFT",
		action = wezterm.action.CopyMode({ JumpBackward = { prev_char = true } }),
	},
	{
		key = "V",
		mods = "NONE",
		action = wezterm.action.CopyMode({ SetSelectionMode = "Line" }),
	},
	{
		key = "V",
		mods = "SHIFT",
		action = wezterm.action.CopyMode({ SetSelectionMode = "Line" }),
	},
	{
		key = "^",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveToStartOfLineContent"),
	},
	{
		key = "^",
		mods = "SHIFT",
		action = wezterm.action.CopyMode("MoveToStartOfLineContent"),
	},
	{ key = "b", mods = "NONE", action = wezterm.action.CopyMode("MoveBackwardWord") },
	{ key = "b", mods = "ALT", action = wezterm.action.CopyMode("MoveBackwardWord") },
	{ key = "b", mods = "CTRL", action = wezterm.action.CopyMode("PageUp") },
	{
		key = "c",
		mods = "CTRL",
		action = wezterm.action.Multiple({
			{ CopyMode = "MoveToViewportBottom" },
			{ CopyMode = "Close" },
		}),
	},
	{
		key = "d",
		mods = "CTRL",
		action = wezterm.action.CopyMode({ MoveByPage = 0.5 }),
	},
	{
		key = "e",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveForwardWordEnd"),
	},
	{
		key = "f",
		mods = "NONE",
		action = wezterm.action.CopyMode({ JumpForward = { prev_char = false } }),
	},
	{ key = "f", mods = "ALT", action = wezterm.action.CopyMode("MoveForwardWord") },
	{ key = "f", mods = "CTRL", action = wezterm.action.CopyMode("PageDown") },
	{
		key = "g",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveToScrollbackTop"),
	},
	{
		key = "g",
		mods = "CTRL",
		action = wezterm.action.Multiple({
			{ CopyMode = "MoveToViewportBottom" },
			{ CopyMode = "Close" },
		}),
	},
	{ key = "h", mods = "NONE", action = wezterm.action.CopyMode("MoveLeft") },
	{ key = "j", mods = "NONE", action = wezterm.action.CopyMode("MoveDown") },
	{ key = "k", mods = "NONE", action = wezterm.action.CopyMode("MoveUp") },
	{ key = "l", mods = "NONE", action = wezterm.action.CopyMode("MoveRight") },
	{
		key = "m",
		mods = "ALT",
		action = wezterm.action.CopyMode("MoveToStartOfLineContent"),
	},
	{
		key = "o",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveToSelectionOtherEnd"),
	},
	{
		key = "q",
		mods = "NONE",
		action = wezterm.action.Multiple({
			{ CopyMode = "MoveToViewportBottom" },
			{ CopyMode = "Close" },
		}),
	},
	{
		key = "t",
		mods = "NONE",
		action = wezterm.action.CopyMode({ JumpForward = { prev_char = true } }),
	},
	{
		key = "u",
		mods = "CTRL",
		action = wezterm.action.CopyMode({ MoveByPage = -0.5 }),
	},
	{
		key = "v",
		mods = "NONE",
		action = wezterm.action.CopyMode({ SetSelectionMode = "Cell" }),
	},
	{
		key = "v",
		mods = "CTRL",
		action = wezterm.action.CopyMode({ SetSelectionMode = "Block" }),
	},
	{ key = "w", mods = "NONE", action = wezterm.action.CopyMode("MoveForwardWord") },
	{
		key = "y",
		mods = "NONE",
		action = wezterm.action.Multiple({
			{ CopyTo = "ClipboardAndPrimarySelection" },
			{ CopyMode = "MoveToViewportBottom" },
			{ CopyMode = "Close" },
		}),
	},
	{ key = "PageUp", mods = "NONE", action = wezterm.action.CopyMode("PageUp") },
	{ key = "PageDown", mods = "NONE", action = wezterm.action.CopyMode("PageDown") },
	{
		key = "End",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveToEndOfLineContent"),
	},
	{
		key = "Home",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveToStartOfLine"),
	},
	{ key = "LeftArrow", mods = "NONE", action = wezterm.action.CopyMode("MoveLeft") },
	{
		key = "LeftArrow",
		mods = "ALT",
		action = wezterm.action.CopyMode("MoveBackwardWord"),
	},
	{
		key = "RightArrow",
		mods = "NONE",
		action = wezterm.action.CopyMode("MoveRight"),
	},
	{
		key = "RightArrow",
		mods = "ALT",
		action = wezterm.action.CopyMode("MoveForwardWord"),
	},
	{ key = "UpArrow", mods = "NONE", action = wezterm.action.CopyMode("MoveUp") },
	{ key = "DownArrow", mods = "NONE", action = wezterm.action.CopyMode("MoveDown") },
}

local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Macchiato"
config.font = wezterm.font("FiraMono Nerd Font Mono")
config.font_size = 12

config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- tmux
-- config.disable_default_key_bindings = true
config.leader = { key = "q", mods = "ALT", timeout_milliseconds = 2000 }
config.keys = {
	{
		key = "T",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "W",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	},
	{
		mods = "CTRL",
		key = "Tab",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		mods = "CTRL|SHIFT",
		key = "Tab",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		mods = "LEADER",
		key = "x",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		mods = "LEADER",
		key = "\\",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "-",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "h",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		mods = "LEADER",
		key = "j",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		mods = "LEADER",
		key = "k",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		mods = "LEADER",
		key = "l",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		mods = "LEADER",
		key = "LeftArrow",
		action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		mods = "LEADER",
		key = "RightArrow",
		action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
	},
	{
		mods = "LEADER",
		key = "DownArrow",
		action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		mods = "LEADER",
		key = "UpArrow",
		action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	},
	-- {
	-- 	key = "N",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.DisableDefaultAssignment,
	-- },
	-- {
	-- 	key = "P",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.DisableDefaultAssignment,
	-- },
	{
		key = "p",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendString("\x10"), -- This sends Ctrl+P with Shift modifier
	},
	{
		key = "n",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendString("\x0e"), -- This sends Ctrl+P with Shift modifier
	},
}

-- COPY MODE --start
custom_copy_mode_keys = {
	{ key = "Escape", mods = "NONE", action = wezterm.action({ CopyMode = "Close" }) },
	{ key = "h", mods = "NONE", action = wezterm.action({ CopyMode = "MoveLeft" }) },
	{ key = "j", mods = "NONE", action = wezterm.action({ CopyMode = "MoveDown" }) },
	{ key = "k", mods = "NONE", action = wezterm.action({ CopyMode = "MoveUp" }) },
	{ key = "l", mods = "NONE", action = wezterm.action({ CopyMode = "MoveRight" }) },
	{
		key = "V",
		mods = "SHIFT",
		action = wezterm.action.CopyMode({ SetSelectionMode = "Line" }),
	},
	{
		key = "v",
		mods = "NONE",
		action = wezterm.action.CopyMode({ SetSelectionMode = "Cell" }),
	},
	{
		key = "y",
		mods = "NONE",
		action = wezterm.action.Multiple({
			{ CopyTo = "ClipboardAndPrimarySelection" },
			wezterm.action.ClearSelection,
			wezterm.action.CopyMode("ClearSelectionMode"),
		}),
	},
	-- Enter search mode to edit the pattern.
	-- When the search pattern is an empty string the existing pattern is preserved
	{ key = "/", mods = "NONE", action = wezterm.action({ Search = { CaseSensitiveString = "" } }) },
	-- navigate any search mode results
	{ key = "n", mods = "NONE", action = wezterm.action({ CopyMode = "NextMatch" }) },
	{ key = "N", mods = "SHIFT", action = wezterm.action({ CopyMode = "PriorMatch" }) },
}

for i, key_entry in ipairs(custom_copy_mode_keys) do
	default_copy_mode_keys[#default_copy_mode_keys + 1] = key_entry
end
config.key_tables = {
	copy_mode = default_copy_mode_keys,
	search_mode = {
		{ key = "Escape", mods = "NONE", action = wezterm.action({ CopyMode = "Close" }) },
		-- Go back to copy mode when pressing enter, so that we can use unmodified keys like "n"
		-- to navigate search results without conflicting with typing into the search area.
		{ key = "Enter", mods = "NONE", action = "ActivateCopyMode" },
	},
}
-- COPY MODE --end

for i = 0, 9 do
	-- leader + number to activate that tab
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = wezterm.action.ActivateTab(i),
	})
end

-- tab bar
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true

-- tmux status
wezterm.on("update-right-status", function(window, _)
	local SOLID_LEFT_ARROW = ""
	local ARROW_FOREGROUND = { Foreground = { Color = "#c6a0f6" } }
	local prefix = ""

	if window:leader_is_active() then
		prefix = " " .. utf8.char(0x1f30a) -- ocean wave
		SOLID_LEFT_ARROW = utf8.char(0xe0b2)
	end

	if window:active_tab():tab_id() ~= 0 then
		ARROW_FOREGROUND = { Foreground = { Color = "#1e2030" } }
	end -- arrow color based on if tab is first pane

	window:set_left_status(wezterm.format({
		{ Background = { Color = "#b7bdf8" } },
		{ Text = prefix },
		ARROW_FOREGROUND,
		{ Text = SOLID_LEFT_ARROW },
	}))
end)

-- and finally, return the configuration to wezterm
return config
