local K = require('keymap')

vim.g.mapleader = '\\'
K.n.noremap("<leader>s", ":%s//g<left><left>")
K.v.noremap("<leader>s",  ":s//g<left><left>")
K.n.noremap("<leader>r", ":%s/<C-r><C-w>//g<left><left>")
K.v.noremap("<leader>r",  ":s/<C-r><C-w>//g<left><left>")

-- Navigation between windows
K.n.noremap("<C-h>", "<C-w>h")
K.n.noremap("<C-j>", "<C-w>j")
K.n.noremap("<C-k>", "<C-w>k")
K.n.noremap("<C-l>", "<C-w>l")
K.i.noremap("<C-h>", "<C-\\><C-N><C-w>h")
K.i.noremap("<C-j>", "<C-\\><C-N><C-w>j")
K.i.noremap("<C-k>", "<C-\\><C-N><C-w>k")
K.i.noremap("<C-l>", "<C-\\><C-N><C-w>l")
K.t.noremap("<C-h>", "<C-\\><C-N><C-w>h")
K.t.noremap("<C-j>", "<C-\\><C-N><C-w>j")
K.t.noremap("<C-k>", "<C-\\><C-N><C-w>k")
K.t.noremap("<C-l>", "<C-\\><C-N><C-w>l")

-- Remove highlight of searchs
K.n.noremap("<C-c>", "<cmd>nohlsearch<cr>")

-- Keep the cursor on the middle of the screen
K.n.noremap("<C-d>", "<C-d>M")
K.n.noremap("<C-u>", "<C-u>M")
K.n.noremap("<C-f>", "<C-f>M")
K.n.noremap("<C-b>", "<C-b>M")
K.n.noremap("n", "nzzzv")
K.n.noremap("N", "Nzzzv")

K.n.noremap("ZW", "<cmd>w!<CR>")

K.i.noremap("<C-right>", "<esc>ea")
K.v.noremap("<", "<gv")
K.v.noremap(">", ">gv")
K.v.noremap("J", ":m '>+1<CR>gv=gv")
K.v.noremap("K", ":m '<-2<CR>gv=gv")

-- Paste or delete without copying text to buffer
K.x.noremap("<leader>p", "\"_dP")
K.n.noremap("<leader>d", "\"_d")
K.v.noremap("<leader>d", "\"_d")

-- Choose when to copy from clipboard
K.n.noremap("<leader>y", "\"+y")
K.v.noremap("<leader>y", "\"+y")
K.n.noremap("<leader>Y", "\"+Y")
K.n.noremap("<leader>ç", "\"+p")
K.v.noremap("<leader>ç", "\"+p")

K.n.noremap("<C-k>", "<cmd>cprev<cr>zz")
K.n.noremap("<C-j>", "<cmd>cnext<cr>zz")
K.n.noremap("<leader>k", "<cmd>lprev<cr>zz")
K.n.noremap("<leader>j", "<cmd>lnext<cr>zz")

K.n.noremap("<leader>t", "<cmd>sp<cr><cmd>terminal<cr>")
K.n.noremap("<leader>vt", "<cmd>vsp<cr><cmd>terminal<cr>")
K.t.noremap("<ESC>", "<C-\\><C-n>")

K.n.noremap("<leader>bb", "<CMD>Break<CR>")
K.n.noremap("<leader>bc", "<CMD>Clear<CR>")
K.n.noremap("<leader>c", "<CMD>Continue<CR>")

K.n.noremap("<F5>", ":make<up><cr>")

-- Call external scripts
K.n.noremap("<leader>d", "<cmd>call system(\"debugbreak\")<cr>")
