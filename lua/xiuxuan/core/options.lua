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

-- if not dart, set cc and cw to wrap 80 characters
-- if the file type is not dart 
if vim.bo.filetype ~= "dart" then
    opt.cc = "80"
    opt.tw = 79
end 
if vim.bo.filetype == "dart" then
    opt.cc = "120"
    opt.tw = 119
end

-- encodings 
opt.encoding = "utf-8" 
opt.fileencoding = "utf-8"
