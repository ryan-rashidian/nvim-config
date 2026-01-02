return {
    "goolord/alpha-nvim",
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set custom header
        dashboard.section.header.val = {
           "  _           __ _               ",
           " (_) ___ ___ / _| |_      ___ __ ",
           " | |/ __/ _ \\ |_| \\ \\ /\\ / / '__|",
           " | | (_|  __/  _| |\\ V  V /| |   ",
           " |_|\\___\\___|_| |_| \\_/\\_/ |_|   "
        }

        -- Set custom footer
        dashboard.section.footer.val = "Neovim Text Editor"

        -- Set custom button section
        dashboard.section.buttons.val = {
            dashboard.button("e", "  New File", ":ene<CR>"),
            dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
            dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>"),
        }

        alpha.setup(dashboard.opts)
    end,
}
