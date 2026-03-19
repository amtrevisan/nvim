return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			local bg = "#0a1410"
			local bg_dark = "#070e0b"
			local bg_highlight = "#1e3530"
			local bg_visual = "#2a4a3e"
			local bg_search = "#c8a86b"
			local fg = "#d4ede0"
			local fg_dark = "#a8c8b8"
			local fg_gutter = "#2e4e40"
			local border = "#3d6b5a"

			require("tokyonight").setup({
				style = "night",
				transparent = true,

				on_colors = function(colors)
					colors.bg = bg
					colors.bg_dark = bg_dark
					colors.bg_float = bg_dark
					colors.bg_highlight = bg_highlight
					colors.bg_popup = bg_dark
					colors.bg_search = bg_search
					colors.bg_sidebar = bg_dark
					colors.bg_statusline = bg_dark
					colors.bg_visual = bg_visual
					colors.border = border
					colors.fg = fg
					colors.fg_dark = fg_dark
					colors.fg_float = fg
					colors.fg_gutter = fg_gutter
					colors.fg_sidebar = fg_dark
					colors.blue = "#7ab4c8"
					colors.cyan = "#5ab896"
					colors.green = "#7ab896"
					colors.teal = "#3d8870"
					colors.magenta = "#b088b0"
					colors.orange = "#c87840"
					colors.red = "#a85030"
					colors.yellow = "#c8a86b"
					colors.purple = "#8a6888"
				end,

				on_highlights = function(hl, c)
					hl.Comment = { fg = "#3d6b5a", italic = true }
					hl.Keyword = { fg = "#f0d890" }
					hl.Function = { fg = "#d4ede0" }
					hl.Type = { fg = "#7ab4c8" }
					hl.String = { fg = "#8aaa88" }
					hl.Identifier = { fg = "#a8c8b8" }
					hl.Special = { fg = "#c8a86b" }
					hl.Number = { fg = "#b088b0" }
					hl.Operator = { fg = "#7ab896" }

					hl["@type.builtin"] = { fg = "#7ab4c8", italic = true }
					hl["@keyword.operator"] = { fg = "#f0d890" }
					hl["@variable"] = { fg = "#d4ede0" }
					hl["@parameter"] = { fg = "#c8b898", italic = true }
					hl["@namespace"] = { fg = "#5ab896" }
					hl["@punctuation.bracket"] = { fg = "#4a7060" }

					hl.DiagnosticError = { fg = "#a85030" }
					hl.DiagnosticWarn = { fg = "#c8a86b" }
					hl.DiagnosticHint = { fg = "#5a8c73" }
					hl.DiagnosticInfo = { fg = "#7ab4c8" }

					hl.NormalFloat = { bg = "#0a1410" }
					hl.FloatBorder = { fg = "#3d6b5a", bg = "#0a1410" }
					hl.StatusLine = { bg = bg_dark, fg = fg_dark }
					hl.StatusLineNC = { bg = bg_dark, fg = fg_gutter }
					hl.WinSeparator = { fg = "#1e3530" }
					hl.IblIndent = { fg = "#1a2e26" }
					hl.IblScope = { fg = "#2e4e40" }
				end,
			})

			vim.cmd([[colorscheme tokyonight]])

			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "tokyonight",
				callback = function()
					vim.cmd([[
            highlight lualine_a_normal  guibg=#3d8870 guifg=#0a1410 gui=bold
            highlight lualine_a_insert  guibg=#c8a86b guifg=#0a1410 gui=bold
            highlight lualine_a_visual  guibg=#f0d890 guifg=#0a1410 gui=bold
            highlight lualine_a_command guibg=#7ab4c8 guifg=#0a1410 gui=bold
            highlight lualine_a_replace guibg=#a85030 guifg=#d4ede0 gui=bold
          ]])
				end,
			})
		end,
	},
}
