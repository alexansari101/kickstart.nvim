-- Override tab indentation for specific filetypes
vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	callback = function() vim.bo.tabstop = 2 end
})

return {}
