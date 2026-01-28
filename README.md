# Melange-Dark

[melange.nvim](https://github.com/savq/melange-nvim) is a semantically helpful colorscheme that associates warm colors with *control flow* and cold colors with *data*. Melange-Dark is a fork of melange.nvim that features better visual effects and extensible plugin supports.

<img width="1326" title="Melange Dark with IBM Plex Mono" alt="Screenshot of code listing using melange dark" src="https://user-images.githubusercontent.com/30883030/212500086-a6709213-c82a-4eca-8f3f-67fdc5c26f23.png">


## Features

- Modern neovim colorscheme, with support for [default highlight groups](https://neovim.io/doc/user/syntax.html#highlight-default), [tree-sitter highlight groups](https://neovim.io/doc/user/treesitter.html#treesitter-highlight-groups) and [LSP semantic highlight groups](https://neovim.io/doc/user/lsp.html#lsp-semantic-highlight).
- Support for various plugins, including (in lexicographical order):
  - [blink.cmp](https://github.com/Saghen/blink.cmp) and [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
  - [lightline.vim](https://github.com/itchyny/lightline.vim) and [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  - [mini.nvim](https://github.com/echasnovski/mini.nvim)
  - [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
  - [rainbow-delimiters.nvim](https://github.com/hiphish/rainbow-delimiters.nvim)
  - [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
  - [VimTeX](https://github.com/lervag/vimtex)
  - And more plugins by their [default highlight](https://neovim.io/doc/user/syntax.html#%3Ahighlight-default) linking!
- Support for various terminal emulators/multiplexers (see [`term/`](term/)):
  - [Alacritty](https://github.com/alacritty/alacritty)
  - [Foot](https://codeberg.org/dnkl/foot)
  - [Ghostty](https://ghostty.org/docs)
  - [iTerm2](https://github.com/gnachman/iTerm2)
  - [Kitty](https://github.com/kovidgoyal/kitty)
  - [Terminator](https://github.com/gnome-terminator/terminator)
  - [Wezterm](https://github.com/wez/wezterm)
  - [Zellij](https://github.com/zellij-org/zellij)
- Ports to other editors or environments:
  - Nixvim [melange](https://nix-community.github.io/nixvim/colorschemes/melange/index.html) @Gaetan Lepage
  - VS Code [Melange Redux](https://github.com/rtud/melange-redux) @rtud


## Requirements

- Neovim ≥ 0.9.2
- A terminal emulator with true color and font variants support (italics, bold, etc).


## Installation

You can install this plugin with any (Neo)Vim plugin manager.

[Paq](https://github.com/savq/paq-nvim):
```lua
"One-In-Dark/melange-dark";
```

[Lazy](https://github.com/folke/lazy.nvim), with the recommended config:
```lua
{ -- PluginSpec
   'One-In-Dark/melange-dark',
   lazy = false,
   priority = 1000,
   config = function()
      vim.cmd 'colorscheme melange'
   end,
}
```

If highlights for some specific file types are not seen, check your tree-sitter parsers. Note [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) can be used to install parsers.


## Usage

Load the [`colorscheme`](https://neovim.io/doc/user/syntax.html#%3Acolorscheme) in your `init.lua`:
```lua
vim.cmd 'colorscheme melange'
```

or in your `init.vim`:
```vim
colorscheme melange
```

Since v0.10, neovim will enable [`termguicolors`](https://neovim.io/doc/user/options.html#'termguicolors') automatically if your terminal supports it. It will also set the [`background`](https://neovim.io/doc/user/options.html#'background') according to your terminal background. It's not necessary to set these options manually.

Configs can be set via `g:melange` (Vimscript) or `require('melange').setup {opts}` (Lua). The defaults are (in Lua code):

```lua
vim.g.melange = {
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
```

## Design

![melange-logo](logo.svg)

melange.nvim has been inspired by many colorschemes, in particular Ayu and Gruvbox.


## FAQ

### Why this fork?

Because there're insurmountable issues with current palettes. For example, *Visual too dim to be seen* ([#109][I109]) and support for render-markdown.nvim ([#127][I127]).

This fork adds some colors into the palette (without deprecating the original ones), so expect seamless transition from upstream. (Where possible, the commits here can be contributed upstream as well.)

I also try to better follow the conventions of other famous colorschemes.


### Why dark-background only?

Because I use dark variant only. I cannot be responsible for light variant.


[I109]: https://github.com/savq/melange-nvim/issues/109
[I127]: https://github.com/savq/melange-nvim/issues/127

