 local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
 if not vim.loop.fs_stat(lazypath) then
	 vim.fn.system({
		 "git",
		 "clone",
		 "--filter=blob:none",
		 "https://github.ocom/folke/lazy.nvim.git",
		 "--branch=stable",
		 lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
    		'nvim-telescope/telescope.nvim', tag = '0.1.8',
      		dependencies = { 'nvim-lua/plenary.nvim' }
    	},

	-- File Tree
	
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
		require("nvim-tree").setup()
		vim.api.nvim_create_autocmd("BufEnter", {
      			pattern = "*",
      			callback = function()
        		if vim.fn.winnr("$") == 1 and vim.bo.filetype == "NvimTree" then
          			vim.cmd("quit")
        		end
		end,
    		})
		end,
	},
	{
		"akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons"
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = {"MarkdownPreviewToggle" },
		ft = { "markdown" },
		build = function() vim.fn["mkdp#util@install"]() end,
	},
	{
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup({ create_mappings = false })
		end
	},
})

