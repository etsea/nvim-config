function ColorMyPencils(color)
    require('rose-pine').setup({
       variant = 'dawn' 
    })
	color = color or "rose-pine"
    vim.o.background = "light"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
