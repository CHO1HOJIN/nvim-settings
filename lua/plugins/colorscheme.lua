-- Monokai Pro 테마 설정
-- return   {
--     "loctvl842/monokai-pro.nvim",
--     lazy = false, -- 즉시 로드
--     priority = 0, -- 테마 우선순위 설정
--     config = function()
--       require("monokai-pro").setup({
--         filter = "octagon", -- 테마 스타일 설정 ("pro", "classic", "octagon", "machine", "ristretto", "spectrum" 중 선택)
--       })
--       vim.cmd([[colorscheme monokai-pro]]) -- 테마 적용
--     end,
-- }
--
-- Kanagawa 테마 설정
return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	priority = 1000,
	config = function()
		-- Default options:
		require("kanagawa").setup({
			compile = false, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = true, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			colors = { -- add/modify theme and palette colors
				palette = {
					-- sumInk0 = "#0d0c0c",
				},
				theme = {
					wave = {},
					lotus = {},
					dragon = {},
					all = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},
			overrides = function(colors) -- add/modify highlights
				local theme = colors.theme
				return {
					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					FloatTitle = { bg = "none" },

					-- Save an hlgroup with dark background and dimmed foreground
					-- so that you can use it where your still want darker windows.
					-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
					NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

					-- Popular plugins that open floats will link to NormalFloat by default;
					-- set their background accordingly if you wish to keep them dark and borderless
					LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
					MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

					-- completetion popup
					Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1, blend = vim.o.pumblend }, -- add `blend = vim.o.pumblend` to enable transparency
					PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
					PmenuSbar = { bg = theme.ui.bg_m1 },
					PmenuThumb = { bg = theme.ui.bg_p2 },

					-- telescope ui
					TelescopeTitle = { fg = theme.ui.special, bold = true },
					TelescopePromptNormal = { bg = theme.ui.bg_p1 },
					TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
					TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
					TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
					TelescopePreviewNormal = { bg = theme.ui.bg_dim },
					TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
				}
			end,
			theme = "dragorn", -- Load "wave" theme when 'background' option is not set
			background = { -- map the value of 'background' option to a theme
				dark = "dragon", -- try "wave" !
				light = "dragon",
			},
		})

		-- setup must be called before loading
		vim.cmd("colorscheme kanagawa")
	end,
}
