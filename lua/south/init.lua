-- logic and mapping
local M = {}

-- Default user settings
M.config = { transparent = false }

M.setup = function(opts)
    M.config = vim.tbl_extend('force', M.config, opts or {})

    vim.g.colors_name = 'south'
    vim.cmd('highlight clear')

    vim.o.background = 'light'

    local cp = require 'south.palette'

    -- Apply user configuration
    local bg = M.config.transparent and 'NONE' or cp.background
    local bg_dark = M.config.transparent and 'NONE' or cp.darker_background

    local groups = {
        -- General
        Normal                = { fg = cp.black, bg = bg },
        Cursor                = { bg = cp.black },
        StatusLine            = { fg = cp.black, bg = cp.cool_light_grey },
        StatusLineNC          = { fg = cp.cool_dark_grey, bg = cp.cool_light_grey },
        NormalFloat           = { fg = cp.black, bg = bg_dark },
        FloatBorder           = { fg = cp.cool_medium_grey, bg = bg },
        Visual                = { bg = cp.selection },
        CursorLine            = { bg = bg_dark },
        WinSeparator          = { fg = cp.cool_dark_grey },
        Underlined            = { fg = cp.denim, underline = true },
        LineNr                = { fg = cp.cool_medium_grey, italic = true },
        CursorLineNr          = { fg = cp.black, italic = true },
        ErrorMsg              = { fg = cp.auburn },
        WarningMsg            = { fg = cp.orange },
        DiagnosticError       = { fg = cp.auburn },
        DiagnosticWarn        = { fg = cp.orange },
        DiagnosticInfo        = { fg = cp.sky },
        DiagnosticOk          = { fg = cp.lake },
        Pmenu                 = { fg = cp.black, bg = bg_dark },
        PmenuSel              = { fg = cp.black, bg = cp.selection },
        PmenuSbar             = { bg = cp.cool_medium_grey },
        PmenuThumb            = { bg = cp.cool_dark_grey },
        Search                = { fg = cp.black, bg = cp.sky, bold = true },
        IncSearch             = { fg = cp.black, bg = cp.orange, bold = true },
        CurSearch             = { fg = cp.black, bg = cp.lake, bold = true },
        TabLine               = { fg = cp.cool_medium_grey, bg = bg_dark },
        TabLineFill           = { fg = cp.cool_medium_grey, bg = bg },
        TabLineSel            = { fg = cp.black, bg = cp.selection, bold = true },

        -- Font lock
        Comment               = { fg = cp.cool_dark_grey, italic = true },
        Constant              = { fg = cp.lake },
        String                = { fg = cp.grass },
        Function              = { fg = cp.cobalt },
        Statement             = { fg = cp.aqua }, -- Keywords/conditionals
        Keyword               = { fg = cp.aqua },
        Number                = { fg = cp.denim },
        Float                 = { fg = cp.denim },
        Identifier            = { fg = cp.sky }, -- Variable names
        Type                  = { fg = cp.lake },
        Special               = { fg = cp.purple },

        -- Telescope.nvim
        TelescopeNormal       = { fg = cp.black, bg = bg },
        TelescopeBorder       = { fg = cp.cool_medium_grey, bg = bg },
        TelescopePromptNormal = { fg = cp.black, bg = bg_dark },
        TelescopePromptBorder = { fg = cp.denim, bg = bg_dark },
        TelescopeSelection    = { bg = cp.selection },
        TelescopeMatching     = { fg = cp.cobalt, bold = true },

        -- Oil.nvim
        OilDir                = { fg = cp.denim, bold = true },
        OilDirSlash           = { fg = cp.cool_dark_grey },
        OilLink               = { fg = cp.aqua, underline = true },
        OilTrash              = { fg = cp.cool_dark_grey },
    }

    -- Apply every highlight group
    for group_name, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group_name, settings)
    end
end

return M
