return function(cp, colors)
    return {
        LazyNormal       = { link = 'NormalFloat' },
        LazyButton       = { fg = cp.black, bg = cp.cool_light_grey },
        LazyButtonActive = { fg = cp.black, bg = cp.selection, bold = true },
        LazyReason       = { fg = cp.cool_dark_grey },
        LazyValue        = { fg = cp.lake },
        LazySpecial      = { fg = cp.purple },
        LazyDir          = { fg = cp.denim },
        LazyUrl          = { fg = cp.aqua, underline = true },
        LazyCommit       = { fg = cp.sky },
        LazyProp         = { fg = cp.grass },
        LazyTaskOutput   = { fg = cp.black },
    }
end
