local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
  return
end

-- friendly-snippets
local friendly_snippets_status, friendly_snippets = pcall(require, "friendly-snippets")
if not friendly_snippets_status then
  return
end

local flutter_riverpod_snippets_status, flutter_riverpod_snippets = pcall(require, "flutter-riverpod-snippets")
if not flutter_riverpod_snippets_status then
  return
end

local awesome_flutter_snippets_status, awesome_flutter_snippets = pcall(require, "awesome-flutter-snippets")
if not awesome_flutter_snippets_status then
  return
end

-- extend to flutter
luasnip.filetype_extend("dart", {"flutter"})

require("luasnip.loaders.from_vscode").lazy_load({
  paths = {
    friendly_snippets,
    flutter_riverpod_snippets,
    awesome_flutter_snippets,
  },
  include = {
    "dart",
    "flutter",
  },
  exclude = {},
})


