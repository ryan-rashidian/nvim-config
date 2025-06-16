vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "text", "gitcommit" },
    callback = function()
        vim.opt_local.spell = true
        vim.opt_local.spelllang = { "en_us" }

        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.showbreak = "↪ "
        vim.opt_local.conceallevel = 2
        vim.opt_local.formatoptions:append("n")
        vim.opt_local.textwidth = 80
        vim.opt_local.colorcolumn = "80"
        vim.opt_local.swapfile = false
    end,
})

