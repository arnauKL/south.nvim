return function(cp, colors)
    return {
        GitSignsAdd                  = { fg = cp.grass },
        GitSignsChange               = { fg = cp.denim },
        GitSignsDelete               = { fg = cp.auburn },
        GitSignsAddNr                = { fg = cp.grass },
        GitSignsChangeNr             = { fg = cp.denim },
        GitSignsDeleteNr             = { fg = cp.auburn },
        GitSignsAddLn                = { bg = cp.light_green_highlight },
        GitSignsChangeLn             = { bg = cp.light_blue_highlight },
        GitSignsDeleteLn             = { bg = cp.light_red_highlight },
        GitSignsCurrentLineBlame     = { fg = cp.cool_dark_grey },
    }
end
