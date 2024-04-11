-- TODO: Add some more functionality
local M = {} -- M stands for module, a naming convention

function M.setup()
	if vim.g.loaded_y_lang == 1 then
		return
	end
	vim.g.loaded_y_lang = 1

	vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "BufWrite", "BufWritePre" }, {
		pattern = "*.why",
		callback = function()
			vim.bo.filetype = "y-lang"
		end,
	})
end

return M
