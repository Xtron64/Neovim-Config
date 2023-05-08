-- Maps leader to space:
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Vim opts:
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
-- Enables line numbers
vim.wo.number = true
-- IDK what this keymap does (ask ThePrimeagen):
vim.keymap.set("x", "<leader>p", [["_dP]])
-- If you use control-c in insert mode you go to normal mode:
vim.keymap.set("i", "<C-c>", "<Esc>")
-- Goes to netrw:
vim.keymap.set("n", "<leader>pv", function()
	vim.cmd("Ex")
end)
-- Source current file:
vim.keymap.set("n", "<leader>so", function()
    vim.cmd("so")
end)
-- Writes the current file:
vim.keymap.set("n", "<leader>wf", function()
	vim.cmd("w")
end)
-- Force quits all buffers:
vim.keymap.set("n", "<leader>qa", function()
	vim.cmd("qa!")
end)
