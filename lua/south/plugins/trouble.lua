return function(cp, colors)
    return {
        TroubleNormal    = { link = 'NormalFloat' },
        TroubleText      = { fg = cp.black },
        TroubleCount     = { fg = cp.purple },
        TroubleError     = { fg = cp.auburn },
        TroubleWarn      = { fg = cp.orange },
        TroubleInformation = { fg = cp.sky },
        TroubleHint      = { fg = cp.lake },
        TroubleSource    = { fg = cp.cool_dark_grey },
        TroubleIndent    = { fg = cp.cool_light_grey },
        TroubleLocation  = { fg = cp.cool_medium_grey },
        TroublePreview   = { link = 'NormalFloat' },
        TroubleFoldIcon  = { fg = cp.cool_dark_grey },
    }
end
