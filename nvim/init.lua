vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

-- default config:
require('peek').setup({
  auto_load = true,         -- whether to automatically load preview when
  close_on_bdelete = true,  -- close preview window on buffer delete
  syntax = true,            -- enable syntax highlighting, affects performance
  theme = 'dark',           -- 'dark' or 'light'
  update_on_change = true,
  app = 'firefox',          -- 'webview', 'browser', string or a table of strings
  filetype = { 'markdown' },-- list of filetypes to recognize as markdown
  throttle_at = 200000,     -- start throttling when file exceeds this
  throttle_time = 'auto',   -- minimum amount of time in milliseconds
})

vim.schedule(function()
  require "mappings"
end)
