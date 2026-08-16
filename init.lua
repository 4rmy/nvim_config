require("options")

local plugin_files = vim.fn.globpath(
    vim.fn.stdpath("config") .. "/lua/plugins",
    "*.lua",
    false,
    true
)

for _, file in ipairs(plugin_files) do
    local name = vim.fn.fnamemodify(file, ":t:r")
    require("plugins." .. name)
end

require("netrw")
require("colors")
require("keymaps")
require("pragma")

