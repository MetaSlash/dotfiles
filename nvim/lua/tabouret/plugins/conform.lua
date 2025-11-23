return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt" },

			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },

			c = { "clang_format" }, -- Match the formatter name below
			cpp = { "clang_format" }, -- Match the formatter name below

			sh = { "beautysh" },
			zsh = { "beautysh" },
		},

		formatters = {
			clang_format = { -- Must match the name in formatters_by_ft
				command = "clang-format",
				args = {
					"--style=file:/home/tabouret/.clang-format",
					"--assume-filename=$FILENAME",
				},
			},
			beautysh = { -- Must match the name in formatters_by_ft
				command = "beautysh",
				args = { "--indent-size", "4", "--tab", "$FILENAME" },
			},
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
