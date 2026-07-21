local M = {}

---@class South.Styles
---@field italics? boolean
---@field italic_comments? boolean
---@field italic_linenums? boolean
---@field bold_keywords? boolean

---@class South.Config
---@field transparent? boolean
---@field darker_floats? boolean
---@field styles? South.Styles

---Default settings
---@type South.Config
local defaults = {
    transparent = false,
    darker_floats = false,
    styles = {
        italics = true,
        italic_comments = true,
        italic_linenums = true,
        bold_keywords = false,
    },
}

---@type South.Config
M.current = vim.deepcopy(defaults)

---@param opts? South.Config
function M.set(opts)
    M.current = vim.tbl_deep_extend("force", M.current, opts or {})
end

return M
