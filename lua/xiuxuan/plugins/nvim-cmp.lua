local cmp_status, cmp = pcall(require, 'cmp')
if not cmp_status then
  return
end

local luasnip_status, luasnip = pcall(require, 'luasnip')
if not luasnip_status then
  return
end

local lspkind_status, lspkind = pcall(require, 'lspkind')
if not lspkind_status then
  return
end

-- load friendly snippets
require('luasnip/loaders/from_vscode').load()

vim.opt.completeopt = 'menu,menuone,noselect'

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },
  sources = {
    { name = 'nvim_lsp', priority = 40 },
    { name = 'luasnip', priority = 50 },
    { name = 'buffer', priority = 30 },
    { name = 'path' , priority = 20},
  },
  formatting = {
    format = lspkind.cmp_format({ 
      maxwidth = 50,
      ellipsis = '...',
    }),
  },
})
