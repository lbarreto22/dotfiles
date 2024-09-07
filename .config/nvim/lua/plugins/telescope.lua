return {
	'nvim-telescope/telescope.nvim',

	tag = '0.1.5',

	dependecies = {
		'nvim-lua/plenary.nvim',
	},

	cmd = "Telescope",

	init = function()
		local builtin = require('telescope.builtin')
		local K = require('keymap')
		K.n.noremap("<leader>ff", builtin.find_files)
		K.n.noremap("<C-p>", builtin.git_files)
		K.n.noremap("<leader>fg", builtin.live_grep)
		K.n.noremap("<leader>fb", builtin.buffers)
		K.n.noremap("<leader>fh", builtin.help_tags)
	end,
}
