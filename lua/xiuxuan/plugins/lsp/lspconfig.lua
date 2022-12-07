local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- set keybinds
  keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
  keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
  keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  -- code action
  keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
  -- rename
  keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
  -- show diagnostics
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
  -- show cursor cursor diagnostics 
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
  -- [d 
  keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
  -- ]d 
  keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
  -- outline 
  keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["html"].setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig["cssls"].setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

-- rust
lspconfig["rust_analyzer"].setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

-- java
lspconfig["jdtls"].setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

-- lua
lspconfig["sumneko_lua"].setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

-- latex
lspconfig["texlab"].setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

-- python
lspconfig["pyright"].setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

-- c / c++ 
capabilities.offsetEncoding = { "utf-16" }
lspconfig["clangd"].setup {
  capabilities = capabilities,
  on_attach = on_attach,
}



-- flutter-tools


require('flutter-tools').setup {
  lsp = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
  settings = {
    showTodos = true,
    completeFunctionCalls = true,
    renameFilesWithClasses = "prompt",
    enableSnippets = true,
  }
}

