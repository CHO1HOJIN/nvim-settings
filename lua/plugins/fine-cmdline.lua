return {
	"VonHeikemen/fine-cmdline.nvim",
	lazy = false,
	config = function()
		local fineline = require("fine-cmdline")
		local fn = fineline.fn
		fineline.setup({
			cmdline = {
				enable_keymaps = true,
				smart_history = true,
				prompt = ": ",
			},
			popup = {
				position = {
					row = "5%",
					col = "50%",
				},
				size = {
					width = "50%",
				},
				border = {
					style = "rounded",
				},
				win_options = {
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
				},
			},
			hooks = {
				set_keymaps = function(imap, feedkeys)
					imap("<Esc>", fn.close)
					imap("<C-c>", fn.close)
					imap("<Up>", fn.up_search_history)
					imap("<Down>", fn.down_search_history)
				end,
			},
		})
	end,
}
