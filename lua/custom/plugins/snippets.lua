return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      -- Load custom Go snippets
      local go_snippets = require("custom.snippets.go")
      require("luasnip").add_snippets("go", go_snippets)
    end,
  },
}