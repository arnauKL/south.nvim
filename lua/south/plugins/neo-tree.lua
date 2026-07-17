return function(cp, colors)
    return {
        NeoTreeNormal           = { fg = cp.black, bg = colors.bg_dark },
        NeoTreeNormalNC         = { link = 'NeoTreeNormal' },
        NeoTreeDirectoryName    = { fg = cp.denim },
        NeoTreeDirectoryIcon    = { fg = cp.aqua },
        NeoTreeRootName         = { fg = cp.denim, bold = true },
        NeoTreeFileNameOpened   = { fg = cp.cobalt, bold = true },
        NeoTreeGitAdded         = { fg = cp.grass },
        NeoTreeGitConflict      = { fg = cp.auburn },
        NeoTreeGitModified      = { fg = cp.orange },
        NeoTreeGitDeleted       = { fg = cp.auburn },
        NeoTreeFloatBorder      = { link = 'FloatBorder' },
        NeoTreeIndentMarker     = { fg = cp.cool_medium_grey },
    }
end
