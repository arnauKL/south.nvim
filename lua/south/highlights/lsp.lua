local M = {}

---@param cp table<string, string>
---@return table<string, vim.api.keyset.highlight>
M.get = function(cp)
    return {
        DiagnosticError          = { fg = cp.auburn },
        DiagnosticWarn           = { fg = cp.orange },
        DiagnosticInfo           = { fg = cp.sky },
        DiagnosticOk             = { fg = cp.lake },
        DiagnosticHint           = { fg = cp.lake },
        DiagnosticUnderlineError = { undercurl = true, sp = cp.auburn },
        DiagnosticUnderlineWarn  = { undercurl = true, sp = cp.orange },
        DiagnosticUnderlineInfo  = { undercurl = true, sp = cp.sky },
        DiagnosticUnderlineHint  = { undercurl = true, sp = cp.lake },

        LspReferenceText         = { bg = cp.light_blue_highlight },
        LspReferenceRead         = { bg = cp.light_blue_highlight },
        LspReferenceWrite        = { bg = cp.medium_blue_highlight, bold = true },
    }
end

return M
