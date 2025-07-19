return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		-- Charger le thème auto et le modifier
		local custom_lualine_theme = require("lualine.themes.auto")

		-- Changing normal mod colors
		custom_lualine_theme.normal.a.bg = "#ee6c94"
		custom_lualine_theme.normal.a.fg = "#000000"
		custom_lualine_theme.normal.b.bg = "#3d3038"
		custom_lualine_theme.normal.b.fg = "#f1a7b3"
		custom_lualine_theme.normal.c.fg = "#fce5ea"
		custom_lualine_theme.normal.c.bg = "#121212"

		-- Changing insert mod colors
		custom_lualine_theme.insert.a.bg = "#00ffff"
		custom_lualine_theme.insert.a.fg = "#000000"
		custom_lualine_theme.insert.b.fg = "#80c4c4"
		custom_lualine_theme.insert.b.bg = "#004a4a"
		custom_lualine_theme.insert.c.fg = "#acfafa"
		custom_lualine_theme.insert.c.bg = "#272b2b"

		-- Changing command mod colors
		custom_lualine_theme.command.a.bg = "#ff8000"
		custom_lualine_theme.command.a.fg = "#000000"
		custom_lualine_theme.command.b.fg = "#f7af65"
		custom_lualine_theme.command.b.bg = "#3d3730"
		custom_lualine_theme.command.c.fg = "#fcc690"
		custom_lualine_theme.command.c.bg = "#2b2825"

		-- Changing visual mod colors
		custom_lualine_theme.visual.a.bg = "#00ff00"
		custom_lualine_theme.visual.a.fg = "#000000"
		custom_lualine_theme.visual.b.fg = "#6ae66a"
		custom_lualine_theme.visual.b.bg = "#31422c"
		custom_lualine_theme.visual.c.fg = "#9eff9e"
		custom_lualine_theme.visual.c.bg = "#262b25"

		require("lualine").setup({
			options = {
				icons_enabled = true,
				component_separators = "",
				section_separators = { left = "", right = "" },
				theme = custom_lualine_theme,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff" },
				lualine_c = { { "filename", path = 1 } },
				lualine_x = { "lsp_status", "encoding", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
