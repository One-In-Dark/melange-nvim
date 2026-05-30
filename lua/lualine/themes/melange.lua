local palette = require 'melange.palette'
local grays = palette.grays
local bright = palette.bright
local normal = palette.ansi

return {
  normal = {
    a = { bg = grays.com, fg = grays.float, gui = 'bold' },
    b = { bg = grays.sel, fg = grays.com },
    c = { bg = grays.float, fg = grays.com },
    y = { bg = grays.ui, fg = grays.float },
  },
  insert = {
    a = { bg = bright.yellow, fg = grays.float, gui = 'bold' },
    b = { bg = grays.sel, fg = normal.yellow },
    c = { bg = grays.float, fg = grays.com },
    y = { bg = normal.yellow, fg = grays.float },
  },
  replace = {
    a = { bg = bright.red, fg = grays.float, gui = 'bold' },
    b = { bg = grays.sel, fg = normal.red },
    c = { bg = grays.float, fg = grays.com },
    y = { bg = normal.red, fg = grays.float },
  },
  command = {
    a = { bg = bright.cyan, fg = grays.float, gui = 'bold' },
    b = { bg = grays.sel, fg = normal.cyan },
    c = { bg = grays.float, fg = grays.com },
    y = { bg = normal.cyan, fg = grays.float },
  },
  terminal = {
    a = { bg = bright.green, fg = grays.float, gui = 'bold' },
    b = { bg = grays.sel, fg = normal.green },
    c = { bg = grays.float, fg = grays.com },
    y = { bg = normal.green, fg = grays.float },
  },
  visual = {
    a = { bg = bright.magenta, fg = grays.float, gui = 'bold' },
    b = { bg = grays.sel, fg = normal.magenta },
    c = { bg = grays.float, fg = grays.com },
    y = { bg = normal.magenta, fg = grays.float },
  },
  inactive = {
    a = { bg = grays.float, fg = grays.com },
    b = { bg = grays.float, fg = grays.com },
    c = { bg = grays.float, fg = grays.com },
  },
}
