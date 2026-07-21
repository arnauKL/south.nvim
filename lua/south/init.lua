-- logic and mapping
local config = require 'south.config'
local M = {}

---@param opts? South.Config
M.setup = function(opts)
    if opts then
        config.set(opts)
    end
end

---Returns theme palette table
---@return table<string, string>
M.get_palette = function()
    return require 'south.palette'
end

---Applies the highlights
M._colorscheme = function()
    vim.g.colors_name = "south"
    vim.o.background = "light"

    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") == 1 then
        vim.cmd("syntax reset")
    end


    require 'south.terminal'.set_terminal_colors()
    require 'south.highlights'.set_highlights()
end

return M
