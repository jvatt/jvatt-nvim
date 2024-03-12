-- Map leader key
require('mapleader')
-- Load Lazy nvim and its plugins first
require('lazynvim')
-- Keymaps
require('keymap')
-- Autoformat
require('autoformat')
-- Load vimscript
local current_file = vim.fn.expand("<sfile>")
local current_dir = vim.fn.fnamemodify(current_file, ":p:h")
local scriptPath = current_dir .. '/vimsettings.vim'

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

vim.cmd('source ' .. scriptPath)
