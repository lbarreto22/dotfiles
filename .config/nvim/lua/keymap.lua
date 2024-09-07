local function bind(mode, outer_opts)
        return function(l, r, opts)
                opts = vim.tbl_extend("force", outer_opts, opts or {})
                vim.keymap.set(mode, l, r, opts)
        end
end

local function make_maps(mode)
        return {
                map     = bind(mode, { noremap = false }),
                noremap = bind(mode, { noremap = true })
        }
end

return {
	n = make_maps("n"),
	i = make_maps("i"),
	x = make_maps("x"),
	v = make_maps("v"),
	t = make_maps("t"),
}
