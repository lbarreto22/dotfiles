return {
	{ 'tpope/vim-surround' },
	{ 'tpope/vim-commentary' },
	{ 'jiangmiao/auto-pairs' },
	{ 'nvim-lua/plenary.nvim' },
	{ 'tpope/vim-fugitive' },

	{
		'lervag/vimtex',

		ft = { 'tex' , 'latex' },

		config = function()
			vim.g.vimtex_view_method = 'zathura'
			vim.g.vimtex_compiler_method = 'pdflatex'
		end,
	},

	{
		'marko-cerovac/material.nvim',

		init = function()
			vim.g.material_style = "deep ocean"
			vim.cmd 'colorscheme material'
		end,
	},

	{
		'junegunn/vim-easy-align',

		init = function()
			local K = require('keymap')

			K.n.noremap('ga', '<Plug>(EasyAlign)')
			K.x.noremap('ga', '<Plug>(EasyAlign)')
		end,
	},

	{
		'bkad/CamelCaseMotion',

		init = function()
			local n = require('keymap').n
			vim.g.camelcasemotion_key = '<leader>'

			n.noremap("<A-w>", "<Plug>CamelCaseMotion_w")
			n.noremap("<A-b>", "<Plug>CamelCaseMotion_b")
			n.noremap("<A-e>", "<Plug>CamelCaseMotion_e")
			n.noremap("<A-ge>", "<Plug>CamelCaseMotion_ge")
		end
	},
}
