local module_names = {
    'telescope', 'fzf', 'oil', 'nvim-tree', 'neo-tree', 'gitsigns',
    'bufferline', 'cmp', 'blink', 'which-key', 'trouble', 'noice',
    'notify', 'dap', 'lazy', 'indent-blankline', 'treesitter-context',
    'render-markdown', 'snacks', 'mini-files',
}

return {
    get = function(cp, colors)
        local groups = {}
        for _, name in ipairs(module_names) do
            for group, definition in pairs(require('south.plugins.' .. name)(cp, colors)) do
                groups[group] = definition
            end
        end
        return groups
    end,
}
