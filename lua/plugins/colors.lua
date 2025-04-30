return {
	"rose-pine/neovim",
	name = "rose-pine",
    lazy = false,
    priority = 1000,
	config = function()
        require("rose-pine").setup({
            variant = "moon",
            dark_variant = "moon",
            styles = {
                bold = true,
                italic = true,
                transparency = true,
            },
        })
		vim.cmd("colorscheme rose-pine")
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = "Red" })
	end,
}
