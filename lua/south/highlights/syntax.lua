local M = {}

---@param cp table<string, string>
---@param conf South.Config
---@return table<string, vim.api.keyset.highlight>
M.get = function(cp, conf)
    local italic_comments = conf.styles and conf.styles.italics and conf.styles.italic_comments
    local bold_keywords = conf.styles and conf.styles.bold_keywords and true or false

    return {
        Comment    = { fg = cp.cool_dark_grey, italic = italic_comments },
        Constant   = { fg = cp.lake },
        String     = { fg = cp.grass },
        Function   = { fg = cp.cobalt },
        Statement  = { fg = cp.aqua },
        Keyword    = { fg = cp.aqua, bold = bold_keywords },
        Number     = { fg = cp.denim },
        Float      = { fg = cp.denim },
        Identifier = { fg = cp.sky },
        Type       = { fg = cp.lake },
        Special    = { fg = cp.purple },
        MatchParen = { fg = cp.cobalt, bg = cp.light_blue_highlight, bold = true },
    }
end

return M
