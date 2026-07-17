return function(cp, colors)
    return {
        TelescopeNormal        = { fg = cp.black, bg = colors.float_bg },
        TelescopeBorder        = { fg = cp.cool_medium_grey, bg = colors.float_bg },
        TelescopeResultsNormal = { fg = cp.black, bg = colors.float_bg },
        TelescopePreviewNormal = { fg = cp.black, bg = colors.float_bg },
        TelescopePromptNormal  = { fg = cp.black, bg = colors.float_bg },
        TelescopePromptBorder  = { fg = cp.denim, bg = colors.float_bg },
        TelescopeSelection     = { bg = cp.selection },
        TelescopeMatching      = { fg = cp.cobalt, bold = true },
    }
end
