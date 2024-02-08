-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"junegunn/fzf",
		build = "./install --all"
	},

	"junegunn/fzf.vim",

	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
		opts = {
			-- globally enable default icons (default to false)
			-- will get overriden by `get_icons` option
			default = true,
		},
	},

	-- "vimwiki/vimwiki",
	{
		"windwp/nvim-autopairs",
		-- Optional dependency
		dependencies = { 'hrsh7th/nvim-cmp' },
		config = function()
			require("nvim-autopairs").setup { fast_wrap = {}, }
			-- If you want to automatically add `(` after selecting a function or method
			local cmp_autopairs = require('nvim-autopairs.completion.cmp')
			local cmp = require('cmp')
			cmp.event:on(
				'confirm_done',
				cmp_autopairs.on_confirm_done()
			)
		end,
	},

	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end
	},

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function() vim.fn["mkdp#util#install"]() end,
	}
}
