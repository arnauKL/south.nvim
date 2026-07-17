return function(cp, colors)
    return {
        MiniFilesNormal       = { fg = cp.black, bg = colors.float_bg },
        MiniFilesTitle        = { fg = cp.denim, bg = colors.float_bg, bold = true },
        MiniFilesTitleBorder  = { fg = cp.denim, bg = colors.float_bg },
        MiniFilesCursorLine   = { bg = cp.selection },
        MiniFilesDirectory    = { fg = cp.denim, bold = true },
        MiniFilesFile         = { fg = cp.black },
    }
end
