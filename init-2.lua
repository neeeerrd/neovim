vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("set nu")
	end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
