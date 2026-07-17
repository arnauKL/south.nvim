return function(cp, colors)
    return {
        RenderMarkdownCode           = { bg = cp.darker_background },
        RenderMarkdownCodeInline     = { fg = cp.purple, bg = cp.darker_background },
        RenderMarkdownBullet         = { fg = cp.denim },
        RenderMarkdownQuote          = { fg = cp.cool_dark_grey, italic = true },
        RenderMarkdownChecked        = { fg = cp.lake },
        RenderMarkdownUnchecked      = { fg = cp.cool_dark_grey },
        RenderMarkdownDash           = { fg = cp.cool_dark_grey },
        RenderMarkdownTableHead      = { fg = cp.denim, bold = true },
        RenderMarkdownTableRow       = { fg = cp.black },
        RenderMarkdownLink           = { fg = cp.aqua, underline = true },
        RenderMarkdownLinkIcon       = { fg = cp.aqua },
        RenderMarkdownCallout        = { fg = cp.cobalt },
    }
end
