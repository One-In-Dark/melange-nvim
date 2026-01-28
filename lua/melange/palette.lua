-- Generally, the varying lightness of colors is approximately of levels 200,
-- 400 and 800.
--
-- Since the theme color (grays) is yellowish, the yellow color is intentionally
-- of deviation. `ansi.yellow` is orange in essence, and `dark.yellow` is bright
-- enough to be a foreground color. Proper background colors are
-- `dark.yellowish` and `dark.orange`.

-- stylua: ignore
return {
  grays = {
    -- Foregrounds
    highlight = "#f5f0eb", --                       50
    fg        = "#ece1d7", -- hsl(29, 35.6, 88.4)   100
    fg_theme  = "#f6e1cd", -- hsl(29, 69.5, 88.4)
    -- Middle-ware
    com       = "#c0a78e", --                       300
    ui_hard   = "#a28d78", --                       400
    ui        = "#867462", -- hsl(30, 15.5, 45.5)   500
    visual    = "#6a5c4d", --                       600
    sel       = "#504539", --                       700
    -- Backgrounds: serve as large areas of background
    cursor    = "#34302c", -- hsl(30, 8.3, 18.8)
    float     = "#2f2b27", -- hsl(30, 9.3, 16.9)
    bg        = "#292522", -- hsl(26, 9.3, 14.7)
    bg_hard   = "#1a1715",
  },
  bright      = {
    red       = "#d47766",
    -- yellow    = "#edc678",
    yellow    = "#EBC06D",
    -- orange    = "#e8ad7d",
    green     = "#85b695",
    cyan      = "#89b3b6",
    blue      = "#a3a9ce",
    magenta   = "#cf9bc2",
  },
  ansi        = {
    red       = "#bd8183",
    yellow    = "#E49B5D", -- hsl(28, 71.4, 62.9)
    green     = "#78997a",
    cyan      = "#7b9695",
    blue      = "#7f91b2",
    magenta   = "#b380b0",
  },
  dark        = {
    red       = "#7d2a2f",
    yellow    = "#8b7449",
    yellowish = "#433418", -- hsl(39, 47.3, 17.8)
    orange    = "#3e2b1a", -- hsl(28, 40.9, 17.3)
    green     = "#233524",
    cyan      = "#253333",
    blue      = "#273142",
    magenta   = "#422741",
  },
}
