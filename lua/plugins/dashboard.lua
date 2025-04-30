return {
    "goolord/alpha-nvim",
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set custom header
        dashboard.section.header.val = {
            "     QQQQQQQQQ    EEEEEEEEEEEEEEEEEEEEEMMMMMMMM               MMMMMMMYYYYYYY       YYYYYYY",
            "   QQ:::::::::QQ  E::::::::::::::::::::M:::::::M             M:::::::Y:::::Y       Y:::::Y",
            " QQ:::::::::::::QQE::::::::::::::::::::M::::::::M           M::::::::Y:::::Y       Y:::::Y",
            "Q:::::::QQQ:::::::EE::::::EEEEEEEEE::::M:::::::::M         M:::::::::Y::::::Y     Y::::::Y",
            "Q::::::O   Q::::::Q E:::::E       EEEEEM::::::::::M       M::::::::::YYY:::::Y   Y:::::YYY",
            "Q:::::O     Q:::::Q E:::::E            M:::::::::::M     M:::::::::::M  Y:::::Y Y:::::Y   ",
            "Q:::::O     Q:::::Q E::::::EEEEEEEEEE  M:::::::M::::M   M::::M:::::::M   Y:::::Y:::::Y    ",    
            "Q:::::O     Q:::::Q E:::::::::::::::E  M::::::M M::::M M::::M M::::::M    Y:::::::::Y     ",     
            "Q:::::O     Q:::::Q E:::::::::::::::E  M::::::M  M::::M::::M  M::::::M     Y:::::::Y      ",      
            "Q:::::O     Q:::::Q E::::::EEEEEEEEEE  M::::::M   M:::::::M   M::::::M      Y:::::Y       ",       
            "Q:::::O  QQQQ:::::Q E:::::E            M::::::M    M:::::M    M::::::M      Y:::::Y       ",       
            "Q::::::O Q::::::::Q E:::::E       EEEEEM::::::M     MMMMM     M::::::M      Y:::::Y       ",       
            "Q:::::::QQ::::::::EE::::::EEEEEEEE:::::M::::::M               M::::::M      Y:::::Y       ",       
            " QQ::::::::::::::QE::::::::::::::::::::M::::::M               M::::::M   YYYY:::::YYYY    ",    
            "   QQ:::::::::::Q E::::::::::::::::::::M::::::M               M::::::M   Y:::::::::::Y    ",    
            "     QQQQQQQQ::::QEEEEEEEEEEEEEEEEEEEEEMMMMMMMM               MMMMMMMM   YYYYYYYYYYYYY    ",    
            "             Q:::::Q                                                                      ",                                                                      
            "              QQQQQQ                                                                      ",                                                                      
        }

        -- Set custom footer
        dashboard.section.footer.val = "QEMY: Custom Neovim Text Editor"

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
