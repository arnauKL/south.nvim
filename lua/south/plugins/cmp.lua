return function(cp, colors)
    return {
        CmpItemAbbr              = { fg = cp.black },
        CmpItemAbbrMatch         = { fg = cp.cobalt, bold = true },
        CmpItemAbbrMatchFuzzy    = { fg = cp.cobalt, bold = true },
        CmpItemKind              = { fg = cp.purple },
        CmpItemMenu              = { fg = cp.cool_dark_grey },
        CmpDocumentation         = { fg = cp.black, bg = colors.float_bg },
        CmpDocumentationBorder   = { fg = cp.cool_medium_grey, bg = colors.float_bg },
        CmpPmenu                 = { fg = cp.black, bg = colors.float_bg },
        CmpSel                   = { bg = cp.selection },
        CmpScrollbarThumb        = { bg = cp.cool_dark_grey },
        CmpScrollbarThumbSnap    = { bg = cp.cool_dark_grey },
    }
end
