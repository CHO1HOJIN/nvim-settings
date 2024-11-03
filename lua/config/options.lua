local opt = vim.opt

-- tab/indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- visual
opt.number = true
opt.relativenumber = false
opt.termguicolors = true
opt.signcolumn = "yes"

-- etc
opt.encoding = "UTF-8"
opt.cmdheight = 1
opt.scrolloff = 10
opt.mouse:append("a")

-- hightlight ColorColumn ctermbg=white guibg=#FFFFFF
-- set colorcolumn=80
-- opt.colorcolumn = 80