return {
	cmd = "Telescope",
    	'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                              , branch = '0.1.1',
      	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{ "<Leader>f", ":Telescope find_files<CR>", desc="find files" },
		{ "<Leader>rs", ":Telescope resume<CR>", desc = "resume" },
		{ "<Leader>g", ":Telescope live_grep<CR>", desc = "grep file" },
		{ "<Leader>o", ":Telescope oldfiles<CR>", desc = "oldfiles" },
	},
    }
