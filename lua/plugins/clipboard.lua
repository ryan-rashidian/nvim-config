return {
    'ojroques/nvim-osc52',
    config = function ()
        require('osc52').setup {
            max_length = 0,
            trim = false,
            silent = false,
        }
        vim.api.nvim_create_autocmd("TextYankPost", {
            callback = function()
                if vim.v.event.operator == 'y' and vim.v.event.regname == '' then
                    require('osc52').copy_register('')
                end
            end,
        })
    end
}
