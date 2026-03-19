-- ╔══════════════════════════════════════════════════════╗
-- ║    MISTY FOREST — nvim-tree (file explorer)          ║
-- ╚══════════════════════════════════════════════════════╝
return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},
			renderer = {
				indent_markers = { enable = true },
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "",
							arrow_open = "",
						},
					},
				},
			},
			actions = {
				open_file = {
					window_picker = { enable = false },
				},
			},
			filters = { custom = { ".DS_Store" } },
			git = { ignore = false },
		})

		-- ── devicons — forest palette ───────────────────────────
		local devicons = require("nvim-web-devicons")
		devicons.set_icon({
			default = { icon = "", color = "#D8E8D9", name = "Default" },
			lua = { icon = "", color = "#A5C8A6", name = "Lua" },
			py = { icon = "", color = "#7DB87E", name = "Python" },
			md = { icon = "", color = "#FFC966", name = "Markdown" },
			js = { icon = "", color = "#D4922A", name = "JavaScript" },
			cpp = { icon = "", color = "#5AB8B8", name = "Cpp" },
			hpp = { icon = "", color = "#82C0A8", name = "Hpp" },
			h = { icon = "", color = "#82C0A8", name = "H" },
			cmake = { icon = "", color = "#E07848", name = "CMake" },
		})

		-- ── highlights ─────────────────────────────────────────
		local function set_forest_colors()
			vim.cmd([[
    highlight NvimTreeNormal           guibg=none guifg=#d4ede0
    highlight NvimTreeNormalNC         guibg=none guifg=#d4ede0
    highlight NvimTreeFileName         guifg=#d4ede0
    highlight NvimTreeFileIcon         guifg=#7ab896
    highlight NvimTreeFolderName       guifg=#7ab896
    highlight NvimTreeOpenedFolderName guifg=#5ab896
    highlight NvimTreeFolderIcon       guifg=#5a8c73
    highlight NvimTreeEndOfBuffer      guibg=none guifg=#0a1410
    highlight NvimTreeVertSplit        guibg=none guifg=#1e3530
    highlight NvimTreeWinSeparator     guibg=none guifg=#1e3530
    highlight NvimTreeGitDirty         guifg=#c8a86b
    highlight NvimTreeGitStaged        guifg=#5a8c73
    highlight NvimTreeGitRenamed       guifg=#c87840
    highlight NvimTreeGitDeleted       guifg=#a85030
    highlight NvimTreeGitNew           guifg=#7ab896
    highlight NvimTreeGitIgnored       guifg=#2e4e40
    highlight NvimTreeExecFile         guifg=#f0d890
  ]])
		end

		set_forest_colors()
		vim.api.nvim_create_autocmd("ColorScheme", {
			pattern = "*",
			callback = set_forest_colors,
		})

		-- ── keymaps ─────────────────────────────────────────────
		local k = vim.keymap
		k.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
		k.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Find file in NvimTree" })
		k.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse all" })
		k.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh NvimTree" })
	end,
}
