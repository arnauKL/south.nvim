local M = {}

M.set_terminal_colors = function()
    local cp                = require 'south.palette'

    -- ANSI colors mapped to palette
    vim.g.terminal_color_0  = cp.darker_background
    vim.g.terminal_color_1  = cp.auburn
    vim.g.terminal_color_2  = cp.grass
    vim.g.terminal_color_3  = cp.orange
    vim.g.terminal_color_4  = cp.cobalt
    vim.g.terminal_color_5  = cp.purple
    vim.g.terminal_color_6  = cp.lake
    vim.g.terminal_color_7  = cp.black
    vim.g.terminal_color_8  = cp.cool_dark_grey
    vim.g.terminal_color_9  = cp.auburn
    vim.g.terminal_color_10 = cp.grass
    vim.g.terminal_color_11 = cp.orange
    vim.g.terminal_color_12 = cp.sky
    vim.g.terminal_color_13 = cp.purple
    vim.g.terminal_color_14 = cp.lake
    vim.g.terminal_color_15 = cp.cool_light_grey
end

return M
