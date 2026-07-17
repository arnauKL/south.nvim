return function(cp, colors)
    return {
        BlinkCmpMenu              = { fg = cp.black, bg = colors.float_bg },
        BlinkCmpMenuSelection     = { bg = cp.selection },
        BlinkCmpMenuBorder        = { fg = cp.cool_medium_grey, bg = colors.float_bg },
        BlinkCmpLabel             = { fg = cp.black },
        BlinkCmpLabelMatch        = { fg = cp.cobalt, bold = true },
        BlinkCmpLabelDetail       = { fg = cp.cool_dark_grey },
        BlinkCmpLabelDescription  = { fg = cp.cool_dark_grey },
        BlinkCmpKind              = { fg = cp.purple },
        BlinkCmpDoc               = { fg = cp.black, bg = colors.float_bg },
        BlinkCmpDocBorder         = { fg = cp.cool_medium_grey, bg = colors.float_bg },
        BlinkCmpScrollbarThumb    = { bg = cp.cool_dark_grey },
        BlinkCmpSignatureHelp     = { fg = cp.black, bg = colors.float_bg },
        BlinkCmpSignatureHelpBorder = { fg = cp.cool_medium_grey, bg = colors.float_bg },
        BlinkCmpSource            = { fg = cp.cool_dark_grey },
    }
end
