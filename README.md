# South for Neovim

A bright, summery ~~Emacs~~ Neovim theme 🌱☀️🌊

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

| Navigation / UI               | Completion / Workflow       | Messages / Markup                             |
| ----------------------------- | --------------------------- | --------------------------------------------- |
| [telescope.nvim][telescope]   | [nvim-cmp][cmp]             | [noice.nvim][noice]                           |
| [fzf-lua][fzf]                | [blink.cmp][blink]          | [nvim-notify][notify]                         |
| [oil.nvim][oil]               | [which-key.nvim][which-key] | [render-markdown.nvim][render-markdown]       |
| [nvim-tree.lua][nvim-tree]    | [gitsigns.nvim][gitsigns]   | [snacks.nvim][snacks]                         |
| [neo-tree.nvim][neo-tree]     | [trouble.nvim][trouble]     | [mini.files][mini-files]                      |
| [bufferline.nvim][bufferline] | [nvim-dap][dap]             | [indent-blankline.nvim][indent-blankline]     |
|                               | [lazy.nvim][lazy]           | [nvim-treesitter-context][treesitter-context] |

Everything else falls back to Neovim's built-in editor highlights.

[telescope]: https://github.com/nvim-telescope/telescope.nvim
[fzf]: https://github.com/ibhagwan/fzf-lua
[oil]: https://github.com/stevearc/oil.nvim
[nvim-tree]: https://github.com/nvim-tree/nvim-tree.lua
[neo-tree]: https://github.com/nvim-neo-tree/neo-tree.nvim
[bufferline]: https://github.com/akinsho/bufferline.nvim
[cmp]: https://github.com/hrsh7th/nvim-cmp
[blink]: https://github.com/Saghen/blink.cmp
[which-key]: https://github.com/folke/which-key.nvim
[gitsigns]: https://github.com/lewis6991/gitsigns.nvim
[trouble]: https://github.com/folke/trouble.nvim
[dap]: https://github.com/mfussenegger/nvim-dap
[lazy]: https://github.com/folke/lazy.nvim
[indent-blankline]: https://github.com/lukas-reineke/indent-blankline.nvim
[treesitter-context]: https://github.com/nvim-treesitter/nvim-treesitter-context
[noice]: https://github.com/folke/noice.nvim
[notify]: https://github.com/rcarriga/nvim-notify
[render-markdown]: https://github.com/MeanderingProgrammer/render-markdown.nvim
[snacks]: https://github.com/folke/snacks.nvim
[mini-files]: https://github.com/echasnovski/mini.files
