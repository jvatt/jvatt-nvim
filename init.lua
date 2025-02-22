-- Map leader key
require("mapleader")
-- Load Lazy nvim and its plugins first
require("lazynvim")
-- Keymaps
require("keymap")
-- Load vimscript
local current_file = vim.fn.expand("<sfile>")
local current_dir = vim.fn.fnamemodify(current_file, ":p:h")
local scriptPath = current_dir .. "/vimsettings.vim"

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

vim.cmd("source " .. scriptPath)

vim.filetype.add({
	-- Detect and assign filetype based on the extension of the filename
	extension = {
		mdx = "mdx",
		log = "log",
		conf = "conf",
		env = "dotenv",
	},
	-- Detect and apply filetypes based on the entire filename
	filename = {
		[".env"] = "dotenv",
		["env"] = "dotenv",
		["tsconfig.json"] = "jsonc",
	},
	-- Detect and apply filetypes based on certain patterns of the filenames
	pattern = {
		-- INFO: Match filenames like - ".env.example", ".env.local" and so on
		["%.env%.[%w_.-]+"] = "dotenv",
	},
})
