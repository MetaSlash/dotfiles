return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		-- Utilise des vrais tabs pour l'indentation
		indent = {
			char = "│", -- Caractère pour l'indentation (peut être changé)
			tab_char = "│", -- Caractère pour les tabs
		},
		-- Active la visualisation des scopes (blocs de code)
		scope = {
			enabled = true,
			show_start = true, -- Montre le début du scope
			show_end = false, -- Ne montre pas la fin du scope
			char = "┃", -- Caractère pour les scopes (peut être changé)
			highlight = { "Function", "Label" }, -- Met en évidence les fonctions et labels
			include = {
				node_type = { ["*"] = { "*" } }, -- Active pour tous les types de nœuds
			},
		},
		-- Exclut certains types de fichiers
		exclude = {
			filetypes = {
				"help",
				"dashboard",
				"lazy",
				"mason",
				"notify",
				"toggleterm",
				"man",
				"text",
			},
		},
	},
}
