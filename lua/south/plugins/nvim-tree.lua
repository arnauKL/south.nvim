return function(cp, colors)
    return {
        NvimTreeNormal          = { fg = cp.black, bg = colors.bg_dark },
        NvimTreeNormalNC        = { link = 'NvimTreeNormal' },
        NvimTreeRootFolder      = { fg = cp.denim, bold = true },
        NvimTreeFolderName      = { fg = cp.denim },
        NvimTreeOpenedFolderName = { fg = cp.cobalt, bold = true },
        NvimTreeFolderIcon      = { fg = cp.aqua },
        NvimTreeIndentMarker    = { fg = cp.cool_medium_grey },
        NvimTreeGitNew          = { fg = cp.grass },
        NvimTreeGitDirty        = { fg = cp.orange },
        NvimTreeGitDeleted      = { fg = cp.auburn },
        NvimTreeSpecialFile     = { fg = cp.purple, underline = true },
        NvimTreeWindowPicker    = { fg = cp.black, bg = cp.selection, bold = true },
    }
end
