local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
local plugins = {}

local plugin_files = vim.fn.globpath(vim.fn.stdpath("config") .. "/lua/leprekus/plugins", "*.lua", false, true)
for _, file in ipairs(plugin_files) do
  if file:match("init.lua") == nil then
    local plugin_config = dofile(file)
    if type(plugin_config) == "table" then
      table.insert(plugins, plugin_config)
    end
  end
end
require('lazy').setup(plugins)
require('leprekus.remap')
