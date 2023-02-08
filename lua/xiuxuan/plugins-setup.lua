local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local status, packer = pcall(require, "packer")

if not status then
  return
end

return packer.startup(function(use)
  -- packer
  use('wbthomason/packer.nvim')

  -- used by other plugins
  use('nvim-lua/plenary.nvim')

  -- colorscheme
  use('bluz71/vim-nightfly-guicolors')

  -- tmux & split window navigation
  use('christoomey/vim-tmux-navigator')
  use('szw/vim-maximizer')

  -- essential plugins
  use('tpope/vim-surround')
  use('vim-scripts/ReplaceWithRegister')

  -- comment
  use('numToStr/Comment.nvim')

  -- nvim tree
  use('nvim-tree/nvim-tree.lua')

  -- icons
  use('kyazdani42/nvim-web-devicons')

  -- statusline
  use('nvim-lualine/lualine.nvim')

  -- fuzzy finding
  use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
  use({ 'nvim-telescope/telescope.nvim', branch = '0.1.x' })

  -- autocompletion
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')

  -- snippets
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
  use('wxxedu/friendly-snippets')

  -- lsp
  -- managing & installing language servers
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')

  -- configuring lsp servers
  use('neovim/nvim-lspconfig')
  use('hrsh7th/cmp-nvim-lsp')
  use({ 'glepnir/lspsaga.nvim', branch = 'main' })
  use('onsails/lspkind-nvim')

  -- flutter 
  use('akinsho/flutter-tools.nvim')
  use('wxxedu/flutter-riverpod-snippets')
  use('wxxedu/awesome-flutter-snippets')
  use('dart-lang/dart-vim-plugin')
  -- vimtex 
  use('lervag/vimtex')

  -- protoburafamadrizf 
  use('wfxr/protobuf.vim')

  -- csv 
  use('chrisbra/csv.vim')

  -- web development 
  use('mattn/emmet-vim')

  -- smooth scrolling 
  use('psliwka/vim-smoothie')

  -- React & React Native 
  use('mxw/vim-jsx')
  use('pangloss/vim-javascript')
  use('leafgarland/typescript-vim')
  use('peitalin/vim-jsx-typescript')


  -- latex fold 
  if packer_bootstrap then
    require("packer").sync()
  end
end)


