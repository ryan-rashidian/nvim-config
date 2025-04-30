return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "bash",
        "python",
        "javascript",
        "html",
        "css",
        "markdown",
        "vim",
        "go",
        "json",
        -- add any others you frequently use
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
      auto_install = true,
    })
  end,
}
