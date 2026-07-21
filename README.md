# South for Neovim

A bright, summery ~Emacs~ Neovim theme 🌱☀️🌊

> This is a Neovim port of the original Emacs
> [south](https://github.com/SophieBosio/south) theme. All credit goes to
> Sophie Bosio, thanks for creating this lovely theme.

Licensed under GPL-3.0.

The text colours are WCAG AA compliant against the background, except the
colour used for comments and specific UI elements, but not WCAG AAA compliant.

## Screenshots

Some lua:

![lua](assets/lua.png)

Some C:

![C](assets/C.png)

## Installation and configuration

### Using Neovim 0.12+'s native package manager `vim.pack`:

```lua
vim.pack.add({
    { src = 'https://github.com/arnauKL/south.nvim' }
})

-- configuration (optional)
require 'south'.setup({
    transparent = true,
    darker_floats = true,
    styles = {
        italic_linenums = false,
    }
})

vim.cmd.colorscheme('south')
```

### Using `lazy.nvim` (Neovim 0.7+)

```lua
{
    'arnauKL/south.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        -- Optional configuration goes here
        require('south').setup({
            transparent = false,
            -- ...
        })
        vim.cmd.colorscheme('south')
    end
}
```

### Configuration

Right now, there are only a few configuration settings. By default, they are
all set to be as close to the original emacs theme:

```lua
require('south').setup({
    transparent = false,        -- Skips setting editor backgrounds if true
    darker_floats = false,      -- Forces solid floating windows/menus even if transparent
    styles = {
        italics = true,         -- Master switch for font slant overrides
        italic_comments = true, -- Toggles italicized comments (ignored if italics = false)
        italic_linenums = true, -- Toggles italicized line numbers (ignored if italics = false)
        bold_keywords = false,  -- Applies bold weight to syntax keywords
    }
})
```

## Supported plugins

I developed this port mostly for myself so I've only added support
for the plugins I use:

- Telescope.nvim
- Oil.nvim
- Which Key
- Fzf-lua

I also included some styling for Markdown headers. Everything else falls back
to editor highlights. If you'd like to add support for other plugins, feel
free to submit a PR!

## Contributing

### Strict No LLM / No AI Policy

Use of generative AI/LLMs is strictly forbidden for all contributions to `south.nvim`.

This includes bug reports and comments on the issue tracker.

## Acknowledgements

- [vague.nvim][https://github.com/vague-theme/vague.nvim], which I used for inspiration on plugin modularity.
