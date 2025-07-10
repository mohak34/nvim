local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
  s(
    "ife",
    fmt(
      [[
if err != nil {{
    {}
}}
]],
      {
        i(1, "return nil, err"),
      }
    ),
    {
      condition = function(line_to_cursor, matched_trigger)
        return vim.bo.filetype == "go"
      end,
    }
  ),
}