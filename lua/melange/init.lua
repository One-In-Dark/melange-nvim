local defaults = {
  enable_font_variants = {
    bold = true,
    italic = true,
    underline = true,
    undercurl = true,
    strikethrough = true,
  },
  markup = {
    -- Distinguish @markup.link and @markup.link.label
    precise_link = false,
  },
  rainbow = {
    -- Treat delimiters as control flow, thus using warm colors only.
    warm_color_only = false,
  },
}
vim.g.melange = defaults

local melange = {}

function melange.setup(opts)
  vim.g.melange = vim.tbl_deep_extend("force", defaults, opts)
end

return melange
