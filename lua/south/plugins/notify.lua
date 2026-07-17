return function(cp, colors)
    return {
        NotifyERROR           = { bg = cp.light_red_highlight },
        NotifyWARN            = { bg = cp.light_yellow_highlight },
        NotifyINFO            = { bg = cp.light_blue_highlight },
        NotifyDEBUG           = { bg = cp.cool_light_grey },
        NotifyTRACE           = { bg = cp.cool_light_grey },
        NotifyERRORTitle      = { fg = cp.auburn, bold = true },
        NotifyWARNTitle       = { fg = cp.orange, bold = true },
        NotifyINFOTitle       = { fg = cp.sky, bold = true },
        NotifyDEBUGTitle      = { fg = cp.cool_dark_grey, bold = true },
        NotifyTRACETitle      = { fg = cp.cool_dark_grey, bold = true },
        NotifyERRORBody       = { fg = cp.black },
        NotifyWARNBody        = { fg = cp.black },
        NotifyINFOBody        = { fg = cp.black },
        NotifyDEBUGBody       = { fg = cp.black },
        NotifyTRACEBody       = { fg = cp.black },
        NotifyBackground      = { bg = colors.float_bg },
        NotifyBorder          = { fg = cp.cool_medium_grey, bg = colors.float_bg },
    }
end
