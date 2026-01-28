local defaults = {
  enable_font_variants = {
    bold = true,
    italic = true,
    underline = true,
    undercurl = true,
    strikethrough = true,
  },
  rainbow = {
    -- Treat delimiters as control flow, thus using warm colors only.
    warm_color_only = false,
  },
}

local function setup(opts)
  vim.g.melange = opts
end

local function set_config()
  vim.g.melange = vim.tbl_deep_extend("force", defaults, vim.g.melange or {})
end

return {
  setup = setup,
  set_config = set_config,
}
