local M = {}

---@param cp table<string, string>
---@param conf South.Config
---@return table<string, vim.api.keyset.highlight>
M.get = function(cp, conf)
    local bg = conf.transparent and "NONE" or cp.background
    local float_bg = conf.darker_floats and cp.darker_background or bg

    return {
        -- Telescope.nvim
        TelescopeNormal        = { fg = cp.black, bg = float_bg },
        TelescopeBorder        = { fg = cp.cool_medium_grey, bg = float_bg },
        TelescopeResultsNormal = { fg = cp.black, bg = float_bg },
        TelescopePreviewNormal = { fg = cp.black, bg = float_bg },
        TelescopePromptNormal  = { fg = cp.black, bg = float_bg },
        TelescopePromptBorder  = { fg = cp.denim, bg = float_bg },
        TelescopeSelection     = { bg = cp.selection },
        TelescopeMatching      = { fg = cp.cobalt, bold = true },
    }
end

return M
