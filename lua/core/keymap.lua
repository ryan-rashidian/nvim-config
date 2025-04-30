local map = vim.keymap.set

-- general keymaps

vim.g.mapleader = " "
map("n", "<leader>pv", vim.cmd.Ex)
map("v", "<A-j>", ":m .+1<CR>==")
map("v", "<A-k>", ":m .-2<CR>==")
map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")
map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprev<CR>")

-- telescope keymaps

vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	callback = function()
		local builtin = require("telescope.builtin")
		map('n', '<leader>pf', builtin.find_files, {})
		map('n', '<C-p>', builtin.git_files, {})
		map('n', '<leader>ps', function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") });
		end)
	end,
})
