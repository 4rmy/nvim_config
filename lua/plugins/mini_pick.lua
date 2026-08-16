vim.pack.add({
    "https://github.com/nvim-mini/mini.pick",
})

local pick = require("mini.pick")

pick.setup()


local map = vim.keymap.set

map("n", "<leader>ff", ':Pick files tool="git"<CR>')
