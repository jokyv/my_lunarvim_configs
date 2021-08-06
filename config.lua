-- NOTE: general settings here!
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "tokyonight"
-- lvim.colorscheme = "spacegray"
lvim.timeoutlen = 100
lvim.auto_close_tree = 0
lvim.wrap_lines = true
lvim.ignore_case = true
lvim.smart_case = true
lvim.leader = "space"
-- have spell check on all the time
-- lvim.default_settings.spell = true
-- keymappings

-- NOTE: settings for core plugins here!
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
-- barbar settings
lvim.builtin.bufferline.active = true
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
		"simrat39/rust-tools.nvim",
		config = function()
			require("user.rust_tools").config() -- or just put your config here
			-- or use this https://github.com/abzcoding/lvim/blob/main/lua/user/rust_tools.lua
		end,
		ft = { "rust", "rs" }, -- or you can not lazy load and remove this line
	},
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

-- PYTHON
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

-- RUST settings
lvim.lsp.override = { "rust" }
lvim.autocommands.custom_groups = {
	-- rust
	{ "Filetype", "rust", "nnoremap <leader>m <cmd>lua require('core.terminal')._exec_toggle('cargo build;read')<CR>" },
	{ "Filetype", "rust", "nnoremap <leader>r <cmd>lua require('core.terminal')._exec_toggle('cargo run;read')<CR>" },
	{
		"Filetype",
		"rust",
		"nnoremap <leader>t <cmd>lua require('toggleterm.terminal').Terminal:new {cmd='cargo test -- --ignored;read', hidden =false}:toggle()<CR>",
	},
	{ "Filetype", "rust", "nnoremap <leader>H <cmd>lua require('core.terminal')._exec_toggle('cargo clippy;read')<CR>" },
	{ "Filetype", "rust", "nnoremap <leader>lm <Cmd>RustExpandMacro<CR>" },
	{ "Filetype", "rust", "nnoremap <leader>lH <Cmd>RustToggleInlayHints<CR>" },
	{ "Filetype", "rust", "nnoremap <leader>le <Cmd>RustRunnables<CR>" },
	{ "Filetype", "rust", "nnoremap <leader>lh <Cmd>RustHoverActions<CR>" },
}
