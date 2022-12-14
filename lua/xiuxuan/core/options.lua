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

-- auto-linebreak in text files, tex files, markdown files, etc.
if vim.bo.filetype == "text" or vim.bo.filetype == "tex" or vim.bo.filetype == "markdown" then
    opt.wrap = true
    opt.cc = 80
    opt.textwidth = 80
end

-- encodings 
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"



-- automatically center on save 
vim.cmd [[ autocmd BufWritePost * :normal! zz]]
