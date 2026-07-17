-- Self-check: verify all plugin highlight modules load and produce valid groups
local rtp_ok = pcall(vim.cmd, 'set rtp^=.')
assert(rtp_ok, 'failed to set runtime path')

local setup_ok = pcall(require('south').setup)
assert(setup_ok, 'failed to call require("south").setup()')
assert(vim.g.colors_name == 'south', 'colors_name was not set')

local groups = {
    TelescopeNormal = 'telescope',
    FzfLuaNormal = 'fzf',
    OilDir = 'oil',
    NvimTreeNormal = 'nvim-tree',
    NeoTreeNormal = 'neo-tree',
    GitSignsAdd = 'gitsigns',
    BufferLineBufferSelected = 'bufferline',
    CmpItemAbbrMatch = 'cmp',
    BlinkCmpMenu = 'blink',
    WhichKey = 'which-key',
    TroubleError = 'trouble',
    NoiceCmdlinePopup = 'noice',
    NotifyERROR = 'notify',
    DapBreakpoint = 'dap',
    LazyNormal = 'lazy',
    IblIndent = 'indent-blankline',
    TreesitterContext = 'treesitter-context',
    RenderMarkdownCode = 'render-markdown',
    SnacksPicker = 'snacks',
    MiniFilesNormal = 'mini-files',
}

local passed, failed = 0, 0
for name, plugin in pairs(groups) do
    local hl_ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = name })
    if hl_ok and hl then
        passed = passed + 1
    else
        io.stderr:write(string.format('FAIL: %s (%s)\n', name, plugin))
        failed = failed + 1
    end
end

local total = passed + failed
if failed == 0 then
    io.write(string.format('OK: %d/%d plugin groups verified\n', passed, total))
else
    io.write(string.format('FAIL: %d/%d passed, %d failed\n', passed, total, failed))
    os.exit(1)
end
