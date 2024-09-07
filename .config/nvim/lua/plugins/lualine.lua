return {
	'hoob3rt/lualine.nvim',

	dependencies = {
		'marko-cerovac/material.nvim',
	},

	opts = {
		options = {
			section_separators = {left = '', right = ''},
			component_separators = {left = '', right = ''},
		},
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'branch', 'diff', 'diagnostics'},
			lualine_c = {'filename'},

			lualine_x = {'encoding', 'fileformat', 'filetype'},
			lualine_y = {'location'},
			lualine_z = {'%p%%/%L'},
		},
		inactive_sections = {
			lualine_c = { '%f %y %m' },

			lualine_x = {},
		},
		extensions = { 'nvim-tree' },
	},
}

