vim.g.mapleader = " "

require("tabouret.lazy_init")
require("tabouret.set")
require("tabouret.remap")

require("colorizer").setup()

vim.o.cursorline = true -- Ensure the cursorline is enabled
vim.cmd([[
highlight CursorLine guibg=#1e1e2e guifg=NONE
]])
