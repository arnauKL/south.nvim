return function(cp, colors)
    return {
        FzfLuaNormal           = { fg = cp.black, bg = colors.float_bg },
        FzfLuaBorder           = { fg = cp.cool_medium_grey, bg = colors.float_bg },
        FzfLuaTitle            = { fg = cp.denim, bg = colors.float_bg, bold = true },
        FzfLuaBackdrop         = { fg = cp.black, bg = colors.float_bg },

        FzfLuaPreviewNormal    = { link = "FzfLuaNormal" },
        FzfLuaPreviewBorder    = { link = "FzfLuaBorder" },
        FzfLuaPreviewTitle     = { fg = cp.lake, bg = colors.float_bg, bold = true },

        FzfLuaFzfPrompt        = { fg = cp.denim, bold = true },
        FzfLuaFzfPointer       = { fg = cp.aqua, bold = true },
        FzfLuaFzfMatch         = { fg = cp.cobalt, bold = true },
        FzfLuaFzfMarker        = { fg = cp.grass, bold = true },
        FzfLuaFzfCursorLine    = { link = "CursorLine" },
        FzfLuaFzfScrollbar     = { fg = cp.cool_medium_grey },

        FzfLuaHeaderBind       = { fg = cp.denim },
        FzfLuaHeaderText       = { fg = cp.cool_dark_grey },
        FzfLuaPathColNr        = { fg = cp.sky },
        FzfLuaPathLineNr       = { fg = cp.grass },
        FzfLuaBufNr            = { fg = cp.denim },
        FzfLuaBufFlagCur       = { fg = cp.auburn, bold = true },
        FzfLuaBufFlagAlt       = { fg = cp.sky },
        FzfLuaLivePrompt       = { fg = cp.denim, bold = true },
        FzfLuaLiveSym          = { fg = cp.purple, bold = true },
    }
end
