local M = {}

M.set_highlights = function()
    local cp = require 'south.palette'
    local conf = require 'south.config'.current

    ---Helper to load individual group modules
    ---@param group string
    ---@return table <string, vim.api.keyset.highlight>
    local function load_group(group)
        return require('south.highlights.' .. group).get(cp, conf)
    end

    local groups = {
        -- core
        editor = load_group('editor'),
        syntax = load_group('syntax'),
        lsp = load_group('lsp'),
        treesitter = load_group('treesitter'),

        -- plugins
        fzf_lua = load_group('fzf-lua'),
        oil = load_group('oil'),
        telescope = load_group('telescope'),
    }

    -- Merge all hl into a single table
    local hl = {}
    for _, group_table in pairs(groups) do
        for group_name, settings in pairs(group_table) do
            hl[group_name] = settings
        end
    end

    -- Apply them all
    for group_name, settings in pairs(hl) do
        vim.api.nvim_set_hl(0, group_name, settings)
    end
end

return M
