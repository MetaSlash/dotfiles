vim.cmd("colorscheme github_dark") -- Enable the theme

-- Indentation settings
vim.opt.tabstop = 4 -- Number of spaces that a tab in the file counts for
vim.opt.softtabstop = 4 -- Number of spaces that a tab counts for while performing editing operations
vim.opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = false -- Use tabs instead of spaces
vim.opt.autoindent = true -- Copy indent from current line when starting a new line
vim.opt.smartindent = true -- Do smart autoindenting when starting a new line
vim.opt.smarttab = true -- Insert tabs on the start of a line according to shiftwidth

-- Display settings for whitespace and tabs
vim.opt.list = false
vim.opt.listchars = "eol:,tab:>-,trail:~,extends:>,precedes:<" -- Define how to display whitespace characters

-- Line numbering and cursor settings
vim.opt.number = true -- Show absolute line number on cursor line
vim.opt.relativenumber = true -- Show relative line numbers
vim.o.cursorline = true -- Highlight the current line
vim.cmd([[ highlight CursorLine guibg=#000000 guifg=NONE ]]) -- Custom highlight for the cursor line
vim.opt.signcolumn = "yes" -- Always show the sign column
vim.opt.scrolloff = 8 -- Minimum number of lines to keep above and below the cursor
vim.opt.showcmd = true -- Show (partial) command in the status line

-- File and backup settings
vim.opt.swapfile = false -- Do not create swap files
vim.opt.backup = false -- Do not create backup files
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir" -- Directory to store undo files
vim.opt.undofile = true -- Enable persistent undo
vim.api.nvim_set_option("clipboard", "unnamed") -- Use system clipboard

-- Search settings
vim.opt.hlsearch = true -- Highlight all matches on previous search pattern
vim.opt.incsearch = true -- Show match for partly typed search command
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Override 'ignorecase' if search pattern contains upper case characters

-- UI settings
vim.opt.termguicolors = true -- Enable 24-bit RGB colors in the TUI
vim.opt.showmode = false -- Do not show the mode in the command line (handled by statusline plugins)
vim.o.updatetime = 300

-- Autocommands
-- No automatic comment insertion
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Transparency settings
vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- Set background to transparent for normal text
vim.api.nvim_set_hl(0, "NonText", { bg = "none" }) -- Set background to transparent for non-text elements
