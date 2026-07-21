local M = {}

---@param cp table<string, string>
---@param conf South.Config
---@return table<string, vim.api.keyset.highlight>
M.get = function(cp, conf)
    return {
        -- Oil.nvim
        OilDir      = { fg = cp.denim, bold = true },
        OilDirSlash = { fg = cp.cool_dark_grey },
        OilLink     = { fg = cp.aqua, underline = true },
        OilTrash    = { fg = cp.cool_dark_grey },
    }
end

return M
