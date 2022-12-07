local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
  return
end

-- extend to flutter
-- luasnip.filetype_extend("dart", {"flutter"})

require("luasnip.loaders.from_vscode").lazy_load({
  paths = {
    'friendly-snippets',
    'awesome-flutter-snippets',
    'flutter-riverpod-snippets',
  },
  include = {
    "dart",
    "flutter",
  },
  exclude = {},
})


