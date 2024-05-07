-- TODO: Add some more functionality
local M = {} -- M stands for module, a naming convention

function M.setup()
	if vim.g.loaded_y_lang == 1 then
		return
	end
	vim.g.loaded_y_lang = 1

	local lsp_id = nil
	vim.api.nvim_create_autocmd({ "BufNew", "BufNewFile", "BufRead", "BufWrite", "BufWritePre" }, {
		pattern = "*.why",
		callback = function(args)
			if lsp_id == nil then
				lsp_id = vim.lsp.start_client({
					name = "yls",
					cmd = { "yls" },
					root_dir = vim.fs.dirname(vim.fs.find({ "*.why" }, { upward = false })[1]),
				})
			end

			if lsp_id ~= nil then
				vim.lsp.buf_attach_client(args.buffer, lsp_id)
			end

			vim.bo.filetype = "y-lang"
		end,
	})

	-- vim.api.nvim_create_autocmd("LspAttach", {
	-- 	callback = function(args)
	-- 		print(vim.inspect(args))
	-- 	end,
	-- })
end

return M
