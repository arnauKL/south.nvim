# South for Neovim

A bright, summery ~Emacs~ Neovim theme 🌱☀️🌊

This is a Neovim port of the original Emacs
[south](https://github.com/SophieBosio/south) theme. All credit goes to
Sophie Bosio, thanks for creating this lovely theme.

The text colours are WCAG AA compliant against the background, except the
colour used for comments and some UI elements, but not WCAG AAA compliant.

# Screenshots

# Installation and configuration

## Using Neovim 0.12+'s native `vim.pack`:

```lua
vim.pack.add({
    'https://github.com/arnauKL/south.nvim'
})
vim.cmd.colorscheme('south')
```

## Using `lazy.nvim` (Neovim 0.7+)

```lua
{
    'arnauKL/south.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        -- Optional configuration goes here
        vim.cmd.colorscheme('south')
    end
}
```


## Configuration

Right now, there are only a few configuration settings. By default, they are
all set to be as close to the original emacs theme:

```lua
require('south').setup({
    transparent = false,        -- skips setting backgrounds if true
    styles = {
        italics = true,         -- global switch
        italic_comments = true, -- individual settings if `italics = true`
        italic_linenums = true, 
        bold_keywords = false,
        darker_floats = false,
    }
})
vim.cmd.colorscheme('south')
```

# Supported plugins

I developed this port mostly for myself so I've only added support
for the plugins I use:

- Telescope.nvim
- Oil.nvim

Everything else falls back to editor highlights. If you'd like to add support
for other plugins, feel free to submit a PR!
