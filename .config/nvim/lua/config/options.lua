local o = vim.opt

-- Basic options
o.title = true
o.wildmode = {longest, list, full}
o.mouse = 'a'

o.undofile = true
o.encoding = 'utf-8'
o.clipboard = o.clipboard + 'unnamedplus'
o.termguicolors = true
o.showmode = false
o.syntax = 'off'

-- Tabs and indents
o.tabstop = 8
o.softtabstop = 8
o.shiftwidth = 8
o.smartindent = true
o.autoindent = true

-- Limit column
o.colorcolumn = '80'

-- Search
o.ignorecase = false

-- Split windows
o.splitbelow = true
o.splitright = true

o.number = true
o.relativenumber = true
o.hlsearch = true
o.autowrite = true

o.compatible = false

o.makeprg = "build_project"
-- o.makeprg = "./build.sh"

-- TODO: discover how to do this in lua
vim.cmd('packadd termdebug')
vim.g.termdebug_popuo = 0
vim.g.termdebug_wide = 163

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd({'BufNewFile', 'BufRead'}, {
	pattern = { '*.h', },
	command = 'set filetype=c'
})

autocmd({'BufNewFile', 'BufRead'}, {
	pattern = {'*.tex'},

	callback = function()
		require('keymap').n.noremap("<F6>", "<cmd>!zathura \"%<.pdf\" --fork<cr>")
		vim.cmd [[
			set filetype=latex
			set makeprg=pdflatex\ \"%<.tex\"
		]]
	end
})

-- Remove trailing whitespaces and newlines.
-- TODO: make this with lua
autocmd("BufWritePre", {
	callback = function()
		-- local hist = vim.fn.histnr("search")
		local save = vim.fn.winsaveview()

		vim.cmd [[ %s/\s\+$//e ]]

		vim.fn.winrestview(save)
	end
})


-- Jump to last position on file when opened
-- TODO: make this with lua
autocmd("BufReadPost", {
	callback = function()
		vim.cmd [[
		if &ft !~# 'commit\|rebase' && line("'\"") > 0 && line("'\"") <= line("$")
			\| exe "normal g'\"zz" |
		\endif
		]]
	end
})

autocmd({"BufRead", "BufNewFile"}, {
        pattern = {"Xresources", "Xdefaults", "xresources", "xdefaults"},
        command = "set filetype=xdefaults",
})

autocmd("BufWritePost", {
        pattern = {"Xresources", "Xdefaults", "xresources", "xdefaults"},
        command = "!xrdb %"
})

-- covert this to lua
-- vim.cmd [[
-- augroup CursorLine
-- 	au!
-- 	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
-- 	au VimEnter,WinEnter,BufWinEnter * hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkblue
-- 	au WinLeave * setlocal nocursorline
-- augroup END
-- ]]




