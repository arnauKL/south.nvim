local M = {}

---@param cp table<string, string>
---@param conf South.Config
---@return table<string, vim.api.keyset.highlight>
M.get = function(cp, conf)
    local bg = conf.transparent and "NONE" or cp.background
    local bg_dark = conf.transparent and "NONE" or cp.darker_background
    local float_bg = conf.darker_floats and cp.darker_background or bg
    local italic_linenums = conf.styles and conf.styles.italics and conf.styles.italic_linenums

    return {
        Normal       = { fg = cp.black, bg = bg },
        Cursor       = { bg = cp.black },
        StatusLine   = { fg = cp.black, bg = cp.cool_light_grey },
        StatusLineNC = { fg = cp.cool_dark_grey, bg = cp.cool_light_grey },
        NormalFloat  = { fg = cp.black, bg = float_bg },
        FloatBorder  = { fg = cp.cool_medium_grey, bg = float_bg },
        Visual       = { bg = cp.selection },
        CursorLine   = { bg = cp.darker_background },
        WinSeparator = { fg = cp.cool_dark_grey },
        Underlined   = { fg = cp.denim, underline = true },
        LineNr       = { fg = cp.cool_medium_grey, italic = italic_linenums },
        CursorLineNr = { fg = cp.black, italic = italic_linenums },
        ErrorMsg     = { fg = cp.auburn },
        WarningMsg   = { fg = cp.orange },

        Pmenu        = { fg = cp.black, bg = float_bg },
        PmenuSel     = { fg = cp.black, bg = cp.selection },
        PmenuSbar    = { bg = cp.cool_medium_grey },
        PmenuThumb   = { bg = cp.cool_dark_grey },

        Search       = { fg = cp.black, bg = cp.medium_blue_highlight },
        IncSearch    = { fg = cp.black, bg = cp.medium_yellow_highlight, bold = true },
        CurSearch    = { fg = cp.black, bg = cp.dark_green_highlight, bold = true },

        TabLine      = { fg = cp.cool_medium_grey, bg = bg_dark },
        TabLineFill  = { fg = cp.cool_medium_grey, bg = bg },
        TabLineSel   = { fg = cp.black, bg = cp.selection, bold = true },

        Folded       = { fg = cp.cool_dark_grey, bg = cp.darker_background },
        ColorColumn  = { bg = cp.darker_background },
        Conceal      = { fg = cp.cool_dark_grey },

        DiffAdd      = { bg = cp.light_green_highlight },
        DiffChange   = { bg = cp.light_blue_highlight },
        DiffDelete   = { fg = cp.cool_medium_grey, bg = cp.light_red_highlight },
        DiffText     = { bg = cp.dark_blue_highlight },
    }
end

return M
