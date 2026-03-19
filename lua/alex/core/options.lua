-- ╔══════════════════════════════════════════════════════╗
-- ║   MISTY FOREST — Neovim Core Options                 ║
-- ╚══════════════════════════════════════════════════════╝
local opt = vim.opt

-- ── Appearance ────────────────────────────────────────
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.cursorline = true

-- ── Cursor shapes per mode (works in Kitty + most terminals)
-- Format: blink-on-time/blink-off-time
-- NORMAL  → blinking block
-- INSERT  → blinking beam (thin vertical bar)
-- REPLACE → blinking underline
opt.guicursor = table.concat({
	"n-c:block-blinkwait700-blinkon400-blinkoff400",
	"i-ci:ver25-blinkwait700-blinkon400-blinkoff400",
	"r-cr:hor20-blinkwait700-blinkon400-blinkoff400",
	"v:block",
	"o:hor50",
}, ",")

-- ── Line numbers ──────────────────────────────────────
opt.relativenumber = true
opt.number = true

-- ── Tabs / indentation ────────────────────────────────
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- ── Search ────────────────────────────────────────────
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- ── Splits ────────────────────────────────────────────
opt.splitright = true
opt.splitbelow = true

-- ── Clipboard ─────────────────────────────────────────
opt.clipboard = "unnamedplus"

-- ── Misc ──────────────────────────────────────────────
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.fileencoding = "utf-8"
opt.mouse = "a"
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.updatetime = 50
opt.timeoutlen = 300

-- ── C++ specific ──────────────────────────────────────
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cpp", "c", "h", "hpp" },
	callback = function()
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.expandtab = true
		vim.opt_local.colorcolumn = "100"
	end,
})
-- Cursor shape per mode (smear-cursor animates transitions)
vim.opt.guicursor = {
	"n-v-c:block-Cursor",
	"i-ci-ve:ver25-CursorInsert",
	"r-cr:hor20-CursorReplace",
	"o:hor50",
	"a:blinkwait0-blinkoff0-blinkon0",
}

vim.api.nvim_set_hl(0, "Cursor", { bg = "#c8a86b", fg = "#0a1410" })
vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#7ab896", fg = "#0a1410" })
vim.api.nvim_set_hl(0, "CursorReplace", { bg = "#a85030", fg = "#d4ede0" })
