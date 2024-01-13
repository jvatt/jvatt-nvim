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
vim.cmd('source '.. scriptPath)
