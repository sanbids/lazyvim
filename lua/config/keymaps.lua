-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.cmd("noremap <up> <nop>")
vim.cmd("noremap <Down> <Nop>")
vim.cmd("noremap <Left> <Nop>")
vim.cmd("noremap <Right> <Nop>")
vim.cmd("inoremap <Up> <Nop>")
vim.cmd("inoremap <Down> <Nop>")
vim.cmd("inoremap <Left> <Nop>")
vim.cmd("inoremap <Right> <Nop>")
vim.cmd("vnoremap im aBoV")
vim.cmd("nnoremap J 5j")
vim.cmd("nnoremap K 5k")
vim.cmd('nnoremap "" vi"')
vim.cmd("vnoremap am aBjoV")

vim.keymap.set("n", "<M-1>", ":ToggleTerm size=13 direction=horizontal<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-2>", ":ToggleTerm size=40 direction=vertical<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-3>", ":ToggleTerm direction=float<cr>", { noremap = true, silent = true })

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>w", ":w<cr>", { desc = "Save", noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":q<cr>", { desc = "Quit" })

-- keymapping
local wk = require("which-key")

wk.register({
  ["/"] = { "gcc<cr>", "Comment toggle linewise (visual)" },
}, { prefix = "<leader>" })
