local color = "nightfly"

local status, _ = pcall(require, color)

if status then
	vim.cmd.colorscheme(color)
	vim.g.nightflyTransparent = true
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	return
else
	print(color .. " colorscheme not found")
	return
end
