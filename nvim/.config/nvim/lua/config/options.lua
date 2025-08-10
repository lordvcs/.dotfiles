-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.wrap = true
-- opt.relativenumber = false
opt.tabstop = 4 -- A TAB character looks like 4 spaces
opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
opt.shiftwidth = 4 -- Number of spaces inserted when indenting

-- Set to "ruff_lsp" to use the old LSP implementation version.
-- vim.g.lazyvim_python_ruff = "ruff"
vim.g.root_spec = { { ".git", "lua" }, "lsp", "cwd" }
