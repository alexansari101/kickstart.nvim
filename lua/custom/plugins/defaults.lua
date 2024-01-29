-- [[ Additional vim configuration options ]]
vim.wo.relativenumber = true
-- Ignore files
vim.opt.wildignore:append({
	"*.pyc",
	"*_build/*",
	"**/coverage/*",
	"**/node_modules/*",
	"**/android/*",
	"**/ios/*",
	"**/.git/*",
})

-- -- Spelling errors are highlighted using the SpellBad highlighting group
-- vim.cmd("hi clear SpellBad")
-- vim.cmd("hi SpellBad cterm=underline")
-- -- Set style for gvim
-- vim.cmd("hi SpellBad gui=undercurl")

-- -- Use treesitter for code folding
-- vim.o.foldmethod = "expr"
-- vim.o.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.o.foldenable = false --Disable folding at startup

-- [[ Additional keymaps ]]
vim.keymap.set("i", "jk", "<Esc>", { desc = "[jk] to return to normal mode from insert mode." })
vim.keymap.set("n", "<leader>w", "<cmd>w!<cr>", { desc = "Fast [w]rite/save file." })
vim.keymap.set(
	"n",
	"<leader>cd",
	"<cmd>cd %:p:h<cr><cmd>pwd<cr>",
	{ desc = "[C]hange CWD to [d]irectory of the open buffer." }
)
-- vim.keymap.set("n", "<leader>ss", "<cmd>setlocal spell!<cr>", { desc = "[S]et/unset buffer local [s]pell checker." })
vim.keymap.set("n", "<leader>sc", require("telescope.builtin").command_history, { desc = "[S]earch [C]ommand history" })
vim.keymap.set("n", "<leader>sk", require("telescope.builtin").keymaps, { desc = "[S]earch [K]eymaps" })

-- -- [[ fzf.vim configuration ]]
-- vim.g.fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

-- [[ Telescope configuration]]
require("telescope.config").values.path_display = { "truncate" }
-- pcall(require("telescope").load_extension, "fzf")

vim.g.vimwiki_list = { { path = "~/Documents/vimwiki/", syntax = "markdown", ext = ".md" } }

return {}
