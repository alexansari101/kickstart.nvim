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

	"vimwiki/vimwiki",
}
