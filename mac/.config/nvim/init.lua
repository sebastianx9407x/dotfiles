require("config.keymaps")
require("config.options")
require("config.lazy")

vim.opt.tabstop = 4 -- A TAB character will appear as 4 spaces wide
vim.opt.shiftwidth = 4 -- Indents (auto/smart indent) will use 4 spaces
vim.opt.softtabstop = 4 -- Number of spaces inserted/deleted with Tab/Backspace
vim.opt.expandtab = true -- Pressing the <Tab> key will insert spaces instead of a TAB character
