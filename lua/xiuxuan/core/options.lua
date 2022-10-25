local opt = vim.opt -- for conciseness

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- use mouse
opt.mouse = "a"
opt.cursorline = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"


-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitbelow = true
opt.splitright = true

opt.iskeyword:append("-")


