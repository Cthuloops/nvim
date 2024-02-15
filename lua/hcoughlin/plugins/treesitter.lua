return {
    'nvim-treesitter/nvim-treesitter',
    version = false,
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSupdate"
}
