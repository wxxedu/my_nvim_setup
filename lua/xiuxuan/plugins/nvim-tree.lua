local setup, nvimtree = pcall(require, 'nvim-tree')
if not setup then
  return
end

-- recommended settings from documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  -- ignore .git, node_modules, .cache, .DS_Store, .vscode, .idea,
  -- .vscode-server, and latex build files 
  filters = {
    custom = {
      ".git",
      "node_modules",
      ".cache",
      ".DS_Store",
      ".vscode",
      ".idea",
      ".vscode-server",
      "*.aux",
      "*.fdb_latexmk",
      "*.fls",
      "*.log",
      "*.out",
      "*.synctex.gz",
      "*.toc",
    }
  }
})
