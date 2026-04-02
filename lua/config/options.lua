-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local is_windows = vim.fn.has("win32") == 1

if is_windows then
  vim.g.python3_host_prog = "C:/Users/weinemax/AppData/Local/Python/pythoncore-3.14-64/python.exe"

  vim.opt.shell = "pwsh.exe"
  vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command "
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
else
  vim.g.python3_host_prog = "/usr/bin/python3"

  vim.opt.shell = "fish"
  vim.opt.shellcmdflag = ""
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end
