-- Netrw configuration

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3          -- Tree view
vim.g.netrw_browse_split = 0
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 25           -- Width percentage

vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = "cp -r"

vim.g.netrw_preview = 1
vim.g.netrw_fastbrowse = 0

vim.keymap.set("n", "<leader>e", function()
    vim.cmd("Lexplore")
end, { desc = "Open file tree" })

vim.keymap.set("n", "<leader>E", function()
    vim.cmd("25Lexplore")
end, { desc = "Open file tree (25 cols)" })
