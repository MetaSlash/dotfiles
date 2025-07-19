vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format()
end, { desc = "Format current file" })

local opts = { noremap = true, silent = true }
