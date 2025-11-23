local function get_git_root()
	local root = vim.fs.find(".git", { upward = true, path = vim.fn.expand("%:p") })[1]
	return root and vim.fn.fnamemodify(root, ":h") or vim.loop.cwd()
end

return {
	"ibhagwan/fzf-lua",
	dependencies = { "echasnovski/mini.icons" },

	opts = {},
	keys = {
		{
			"<leader>ff",
			function()
				-- On cherche le dossier .git en remontant depuis le fichier actuel
				local root = get_git_root()

				require("fzf-lua").files({ cwd = root })
			end,
			desc = "Find Files (Git Root)",
		},

		{
			"<leader>fg",
			function()
				local root = vim.fs.find(".git", { upward = true })[1]
				local cwd = root and vim.fs.dirname(root) or vim.loop.cwd()

				require("fzf-lua").live_grep({ cwd = cwd })
			end,
			desc = "Live Grep (Git Root)",
		},
		{
			"<leader>fc",
			function()
				require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
			end,

			desc = "Find in neovim configuration",
		},
		{
			"<leader>fh",
			function()
				require("fzf-lua").helptags()
			end,
			desc = "[F]ind [H]elp",
		},
		{
			"<leader>fk",
			function()
				require("fzf-lua").keymaps()
			end,
			desc = "[F]ind [K]eymaps",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").builtin()
			end,
			desc = "[F]ind [B]uiltin FZF",
		},
		{
			"<leader>fw",
			function()
				require("fzf-lua").grep_cword()
			end,
			desc = "[F]ind current [W]ord",
		},
		{
			"<leader>fW",
			function()
				require("fzf-lua").grep_cWORD()
			end,
			desc = "[F]ind current [W]ORD",
		},
		{
			"<leader>fd",
			function()
				require("fzf-lua").diagnostics_document()
			end,
			desc = "[F]ind [D]iagnostics",
		},
		{
			"<leader>fr",
			function()
				require("fzf-lua").resume()
			end,
			desc = "[F]ind [R]esume",
		},
		{
			"<leader>fo",
			function()
				require("fzf-lua").oldfiles()
			end,
			desc = "[F]ind [O]ld Files",
		},
		{
			"<leader><leader>",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "[,] Find existing buffers",
		},
		{
			"<leader>/",
			function()
				require("fzf-lua").lgrep_curbuf()
			end,
			desc = "[/] Live grep the current buffer",
		},
	},
}
