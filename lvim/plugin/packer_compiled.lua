-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jokyv/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/jokyv/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/jokyv/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/jokyv/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jokyv/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    config = { "\27LJ\1\2�\1\0\0\2\0\a\0\0174\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\5�4\0\3\0007\0\4\0007\0\5\0007\0\6\0>\0\1\1G\0\1\0\19on_config_done\15bufferline\fbuiltin\tlvim\nsetup\20core.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/barbar.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\a\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\5\0>\1\2\0=\0\0\1G\0\1\0\19on_config_done\14dashboard\fbuiltin\tlvim\nsetup\19core.dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\a\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\5\0>\1\2\0=\0\0\1G\0\1\0\19on_config_done\rgitsigns\fbuiltin\tlvim\nsetup\18core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2:\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\17core.lualine\frequire\0" },
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/lualine.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\b\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\a\0>\1\2\0=\0\0\1G\0\1\0\19nvim-autopairs\19on_config_done\14autopairs\fbuiltin\tlvim\nsetup\19core.autopairs\frequire\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\a\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\1\0>\1\2\0=\0\0\1G\0\1\0\19on_config_done\fcomment\fbuiltin\tlvim\nsetup\17nvim_comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-compe"] = {
    after = { "nvim-autopairs" },
    after_files = { "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\1\2�\1\0\0\3\0\a\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\5\0>\1\2\0=\0\0\1G\0\1\0\19on_config_done\ncompe\fbuiltin\tlvim\nsetup\15core.compe\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\6\0\0184\0\0\0%\1\1\0>\0\2\0027\1\2\0>\1\1\0014\1\3\0007\1\4\0017\1\1\0017\1\5\1\15\0\1\0T\2\6�4\1\3\0007\1\4\0017\1\1\0017\1\5\1\16\2\0\0>\1\2\1G\0\1\0\19on_config_done\fbuiltin\tlvim\nsetup\15lspinstall\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\b\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\a\0>\1\2\0=\0\0\1G\0\1\0\15toggleterm\19on_config_done\rterminal\fbuiltin\tlvim\nsetup\18core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\b\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\a\0>\1\2\0=\0\0\1G\0\1\0\21nvim-tree.config\19on_config_done\rnvimtree\fbuiltin\tlvim\nsetup\18core.nvimtree\frequire\0" },
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\b\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\a\0>\1\2\0=\0\0\1G\0\1\0\28nvim-treesitter.configs\19on_config_done\15treesitter\fbuiltin\tlvim\nsetup\20core.treesitter\frequire\0" },
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\1\2�\1\0\0\2\0\a\0\0174\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\5�4\0\3\0007\0\4\0007\0\5\0007\0\6\0>\0\1\1G\0\1\0\19on_config_done\fproject\fbuiltin\tlvim\nsetup\17core.project\frequire\0" },
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/project.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\1\2>\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\vconfig\20user.rust_tools\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/rust-tools.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\a\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\5\0>\1\2\0=\0\0\1G\0\1\0\19on_config_done\14telescope\fbuiltin\tlvim\nsetup\19core.telescope\frequire\0" },
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\1\2A\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\vconfig\23user.todo-comments\frequire\0" },
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\b\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\a\0>\1\2\0=\0\0\1G\0\1\0\14which-key\19on_config_done\14which_key\fbuiltin\tlvim\nsetup\19core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jokyv/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2�\1\0\0\3\0\b\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\a\0>\1\2\0=\0\0\1G\0\1\0\28nvim-treesitter.configs\19on_config_done\15treesitter\fbuiltin\tlvim\nsetup\20core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2:\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\17core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\1\2A\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\vconfig\23user.todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2�\1\0\0\3\0\b\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\a\0>\1\2\0=\0\0\1G\0\1\0\21nvim-tree.config\19on_config_done\rnvimtree\fbuiltin\tlvim\nsetup\18core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2�\1\0\0\3\0\a\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\b�4\0\3\0007\0\4\0007\0\5\0007\0\6\0004\1\0\0%\2\5\0>\1\2\0=\0\0\1G\0\1\0\19on_config_done\14telescope\fbuiltin\tlvim\nsetup\19core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\1\2�\1\0\0\2\0\a\0\0174\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0007\0\6\0\15\0\0\0T\1\5�4\0\3\0007\0\4\0007\0\5\0007\0\6\0>\0\1\1G\0\1\0\19on_config_done\fproject\fbuiltin\tlvim\nsetup\17core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType rs ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rs" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-comment', 'gitsigns.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'which-key.nvim', 'barbar.nvim', 'nvim-toggleterm.lua', 'dashboard-nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'vim-vsnip', 'nvim-compe'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'nvim-lspinstall'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
