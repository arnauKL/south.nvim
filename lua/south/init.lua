-- logic and mapping
local M = {}

-- Default user settings
M.config = {
    transparent = false,
    styles = {
        italics = true,
        italic_comments = true,
        italic_linenums = true,
        bold_keywords = false,
        darker_floats = false,
    }
}

M.setup = function(opts)
    M.config = vim.tbl_extend('force', M.config, opts or {})

    vim.g.colors_name = 'south'
    vim.cmd('highlight clear')

    vim.o.background = 'light'

    local cp = require 'south.palette'

    -- Apply user configuration
    local bg = M.config.transparent and 'NONE' or cp.background
    local bg_dark = M.config.transparent and 'NONE' or cp.darker_background
    local italic_comments = M.config.styles.italics and M.config.styles.italic_comments
    local italic_linenums = M.config.styles.italics and M.config.styles.italic_linenums
    local bold_keywords = M.config.styles.bold_keywords and true or false
    local float_bg = M.config.darker_floats and cp.darker_background or
        bg_dark -- i'll assume that if true, the user does not transparency

    local groups = {
        -- General
        Normal                         = { fg = cp.black, bg = bg },
        Cursor                         = { bg = cp.black },
        StatusLine                     = { fg = cp.black, bg = cp.cool_light_grey },
        StatusLineNC                   = { fg = cp.cool_dark_grey, bg = cp.cool_light_grey },
        NormalFloat                    = { fg = cp.black, bg = float_bg },
        FloatBorder                    = { fg = cp.cool_medium_grey, bg = bg },
        Visual                         = { bg = cp.selection },
        CursorLine                     = { bg = bg_dark },
        WinSeparator                   = { fg = cp.cool_dark_grey },
        Underlined                     = { fg = cp.denim, underline = true },
        LineNr                         = { fg = cp.cool_medium_grey, italic = italic_linenums },
        CursorLineNr                   = { fg = cp.black, italic = italic_linenums },
        ErrorMsg                       = { fg = cp.auburn },
        WarningMsg                     = { fg = cp.orange },

        DiagnosticError                = { fg = cp.auburn },
        DiagnosticWarn                 = { fg = cp.orange },
        DiagnosticInfo                 = { fg = cp.sky },
        DiagnosticOk                   = { fg = cp.lake },
        DiagnosticHint                 = { fg = cp.lake },
        DiagnosticUnderlineError       = { undercurl = true, sp = cp.auburn },
        DiagnosticUnderlineWarn        = { undercurl = true, sp = cp.orange },
        DiagnosticUnderlineInfo        = { undercurl = true, sp = cp.sky },
        DiagnosticUnderlineHint        = { undercurl = true, sp = cp.lake },

        LspReferenceText               = { bg = cp.light_blue_highlight },
        LspReferenceRead               = { bg = cp.light_blue_highlight },
        LspReferenceWrite              = { bg = cp.medium_blue_highlight, bold = true },

        Pmenu                          = { fg = cp.black, bg = bg_dark },
        PmenuSel                       = { fg = cp.black, bg = cp.selection },
        PmenuSbar                      = { bg = cp.cool_medium_grey },
        PmenuThumb                     = { bg = cp.cool_dark_grey },

        Search                         = { fg = cp.black, bg = cp.medium_blue_highlight },
        IncSearch                      = { fg = cp.black, bg = cp.medium_yellow_highlight, bold = true },
        CurSearch                      = { fg = cp.black, bg = cp.dark_green_highlight, bold = true },

        TabLine                        = { fg = cp.cool_medium_grey, bg = bg_dark },
        TabLineFill                    = { fg = cp.cool_medium_grey, bg = bg },
        TabLineSel                     = { fg = cp.black, bg = cp.selection, bold = true },

        -- Font lock
        Comment                        = { fg = cp.cool_dark_grey, italic = italic_comments },
        Constant                       = { fg = cp.lake },
        String                         = { fg = cp.grass },
        Function                       = { fg = cp.cobalt },
        Statement                      = { fg = cp.aqua }, -- Keywords/conditionals
        Keyword                        = { fg = cp.aqua, bold = bold_keywords },
        Number                         = { fg = cp.denim },
        Float                          = { fg = cp.denim },
        Identifier                     = { fg = cp.sky }, -- Variable names
        Type                           = { fg = cp.lake },
        Special                        = { fg = cp.purple },
        MatchParen                     = { fg = cp.cobalt, bg = cp.light_blue_highlight, bold = true },

        Folded                         = { fg = cp.cool_dark_grey, bg = cp.darker_background },
        ColorColumn                    = { bg = cp.darker_background },
        Conceal                        = { fg = cp.cool_dark_grey },

        DiffAdd                        = { bg = cp.light_green_highlight },
        DiffChange                     = { bg = cp.light_blue_highlight },
        DiffDelete                     = { fg = cp.cool_medium_grey, bg = cp.light_red_highlight },
        DiffText                       = { bg = cp.dark_blue_highlight },

        -- Telescope.nvim
        TelescopeNormal                = { fg = cp.black, bg = bg },
        TelescopeBorder                = { fg = cp.cool_medium_grey, bg = bg },
        TelescopePromptNormal          = { fg = cp.black, bg = bg_dark },
        TelescopePromptBorder          = { fg = cp.denim, bg = bg_dark },
        TelescopeSelection             = { bg = cp.selection },
        TelescopeMatching              = { fg = cp.cobalt, bold = true },

        -- Oil.nvim
        OilDir                         = { fg = cp.denim, bold = true },
        OilDirSlash                    = { fg = cp.cool_dark_grey },
        OilLink                        = { fg = cp.aqua, underline = true },
        OilTrash                       = { fg = cp.cool_dark_grey },

        -- Some markups
        markdownH1                     = { fg = cp.denim, bold = true },
        markdownH2                     = { fg = cp.lake, bold = true },
        markdownH3                     = { fg = cp.aqua, bold = true },
        markdownH4                     = { fg = cp.grass, bold = true },
        markdownH5                     = { fg = cp.aqua, bold = true },
        markdownH6                     = { fg = cp.auburn, bold = true },
        ["@markup.heading.1.markdown"] = { fg = cp.denim, bold = true },
        ["@markup.heading.2.markdown"] = { fg = cp.lake, bold = true },
        ["@markup.heading.3.markdown"] = { fg = cp.aqua, bold = true },
        ["@markup.heading.4.markdown"] = { fg = cp.grass, bold = true },
        ["@markup.heading.5.markdown"] = { fg = cp.aqua, bold = true },
        ["@markup.heading.6.markdown"] = { fg = cp.auburn, bold = true },
        ["@markup.raw.block.markdown"] = { bg = cp.darker_background },
        ["@markup.heading.typst"]      = { fg = cp.denim, bold = true },
    }

    -- Apply every highlight group
    for group_name, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group_name, settings)
    end
end

return M
