-- general settings
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "tokyonight"
-- lvim.colorscheme = "spacegray"
lvim.timeoutlen = 100
lvim.auto_close_tree = 0
lvim.wrap_lines = true
lvim.ignore_case = true
lvim.smart_case = true

-- have spell check on all the time
-- lvim.default_settings.spell = true

-- keymappings
lvim.leader = "space"

-- plugins
-- dashboard settings
lvim.builtin.dashboard.active = true
lvim.builtin.dashboard.custom_header = { "" }
lvim.builtin.dashboard.footer = { "" }

-- terminal settings
lvim.builtin.terminal.active = true

-- nvimtree settings
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.hide_dotfiles = 0

-- auto-pairs
-- lvim.builtin.auto-pairs.add_rules = ("<", ">", "lua")

-- treesitter settings
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- LSP settings
lvim.lsp.diagnostics.virtual_text = false

-- NOTE: Additional Plugins here!
lvim.plugins = {
	{ "folke/tokyonight.nvim" },
	{
		"folke/todo-comments.nvim",
		config = function()
			require("todo-comments").setup()
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
}

-- python
-- lvim.lang.python.lsp = {
-- 	{
-- 		exe = "jedi",
-- 		args = {},
-- 	},
-- }

lvim.lang.python.linters = {
	{
		exe = "flake8",
		args = {},
	},
}

lvim.lang.python.formatters = {
	{
		exe = "black",
		args = {},
	},
}

-- lua
lvim.lang.lua.formatters = {
	{
		exe = "stylua",
		args = {},
	},
}
