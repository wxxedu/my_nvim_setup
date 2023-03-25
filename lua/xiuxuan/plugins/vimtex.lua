-- set up vimtex 

vim.g.tex_flavor = "latex" 
vim.g.vimtex_view_sync = 1 
vim.g.vimtex_view_skim_activate = 1
-- add shell escape to latexmk 
vim.g.vimtex_compiler_latexmk = {
  build_dir = "build",
  options = {
    '-shell-escape',
    '-interaction=nonstopmode',
    '-synctex=1',
    '-file-line-error',
    '-shell-escape',
  },
  callback = 1,
  continuous = 1,
  executable = 'latexmk',
  hooks = {},
}

-- vim.g.vimtex_view_general_viewer = "open -a Skim"
