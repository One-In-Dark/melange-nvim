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
    highlight = "#F5F0EB", --                       50
    fg        = "#ECE1D7", -- hsl(29, 35.6, 88.4)   100
    fg_theme  = "#F6E1CD", -- hsl(29, 69.5, 88.4)
    -- Middle-ware
    com       = "#C0A78E", --                       300
    ui_hard   = "#A28D78", --                       400
    ui        = "#867462", -- hsl(30, 15.5, 45.5)   500
    visual    = "#6A5C4D", --                       600
    sel       = "#504539", --                       700
    -- Backgrounds: serve as large areas of background
    cursor    = "#34302C", -- hsl(30, 8.3, 18.8)
    float     = "#2F2B27", -- hsl(30, 9.3, 16.9)
    bg        = "#292522", -- hsl(26, 9.3, 14.7)
    bg_hard   = "#1A1715",
  },
  bright      = {
    red       = "#D47766",
    yellow    = "#EBC06D",
    orange    = "#E8AD7D",
    green     = "#85B695",
    cyan      = "#89B3B6",
    blue      = "#A3A9CE",
    magenta   = "#CF9BC2",
  },
  ansi        = {
    red       = "#BD8183",
    yellow    = "#E49B5D", -- hsl(28, 71.4, 62.9)
    green     = "#78997A",
    cyan      = "#7B9695",
    blue      = "#7F91B2",
    magenta   = "#B380B0",
  },
  dark        = {
    red       = "#7D2A2F",
    yellow    = "#8B7449",
    yellowish = "#433418", -- hsl(39, 47.3, 17.8)
    orange    = "#3E2B1A", -- hsl(28, 40.9, 17.3)
    green     = "#233524",
    cyan      = "#253333",
    blue      = "#273142",
    magenta   = "#422741",
  },
}
