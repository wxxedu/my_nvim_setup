local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
  return
end

-- friendly-snippets
local friendly_snippets_status, friendly_snippets = pcall(require, "friendly-snippets")
if not friendly_snippets_status then
  return
end


-- extend to flutter
luasnip.filetype_extend("dart", {"flutter"})

require("luasnip.loaders.from_vscode").lazy_load({
  paths = {
    friendly_snippets,
    './snippets/flutter-riverpod-snippets/',
  },
  include = {
    "dart",
    "flutter",
  },
  exclude = {},
})


