-- ╔══════════════════════════════════════════════════════╗
-- ║   MISTY FOREST — Cursor Animations                   ║
-- ║   neovide-style smooth cursor + trail particles      ║
-- ╚══════════════════════════════════════════════════════╝
return {
	-- ── 1. Smooth animated cursor movement + trail ─────────
	{
		"sphamba/smear-cursor.nvim",
		event = "VeryLazy",
		opts = {
			-- Trail smear colour — warm amber like a god-ray ember
			cursor_color = "#FFC966",
			-- How fast the smear catches up to cursor position
			-- Lower = more trailing lag (dreamier), higher = snappier
			stiffness = 0.6,
			trailing_stiffness = 0.3,
			distance_stop_animating = 0.5,
			-- Particle count along the smear
			smear_between_neighbor_lines = true,
			-- Disable in insert mode if you find it distracting while typing
			enabled_for_insert = true,
			-- The smear uses sub-cell characters for smoothness
			legacy_computing_symbols_support = false,
		},
	},

	-- ── 2. Mode-based cursor shape + blink ─────────────────
	-- (pure lua, no extra plugin needed — put in options.lua)
	-- Handled below via vim.opt settings that work in kitty:
	--   NORMAL  → blinking block   (amber)
	--   INSERT  → blinking beam    (sage)
	--   REPLACE → blinking underline (ember-red)
}
