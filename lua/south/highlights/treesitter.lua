local M = {}

---@param cp table<string, string>
---@return table<string, vim.api.keyset.highlight>
M.get = function(cp)
    return {
        markdownH1                     = { fg = cp.denim, bold = true },
        markdownH2                     = { fg = cp.lake, bold = true },
        markdownH3                     = { fg = cp.aqua, bold = true },
        markdownH4                     = { fg = cp.grass, bold = true },
        markdownH5                     = { fg = cp.aqua, bold = true },
        markdownH6                     = { fg = cp.auburn, bold = true },
        ["@markup.heading.1.markdown"] = { fg = cp.denim, bold = true },
        ["@markup.heading.2.markdown"] = { fg = cp.lake, bold = true },
        ["@markup.heading.3.markdown"] = { fg = cp.aqua, bold = true },
        ["@markup.heading.4.markdown"] = { fg = cp.grass, bold = true },
        ["@markup.heading.5.markdown"] = { fg = cp.aqua, bold = true },
        ["@markup.heading.6.markdown"] = { fg = cp.auburn, bold = true },
        ["@markup.heading.typst"]      = { fg = cp.denim, bold = true },
    }
end

return M
