return {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",
    cond = vim.g.neovide == nil,
    opts = {
        hide_target_hack = true,
        cursor_color = "none",
    },
    specs = {
        {
            "echasnovski/mini.animate",
            optional = true,
            opts = {
                cursor = { enable = true },
            },
        },
    },
}
