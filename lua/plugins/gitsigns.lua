return {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    enabled = true,
    config = function()
        local icons = require("config.icons")
        require("gitsigns").setup({
            signs = {
                add = { text = icons.git.Staged },
                untracked = { text = icons.git.Untracked },
                change = { text = icons.git.Unstaged },
                delete = { text = icons.git.Deleted },
                topdelete = { text = icons.git.Deleted },
                changedelete = { text = icons.git.Deleted },
            },
            signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
            linehl = false,    -- Toggle with `:Gitsigns toggle_linehl`
            numhl = false,     -- Toggle with `:Gitsigns toggle_nunhl`
            word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
            sign_priority = 9,
            watch_gitdir = {
                interval = 1000,
            },
            attach_to_untracked = true,
            signs_staged_enable = false,
            current_line_blame = false,
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = "eol",
                delay = 100,
            },
            preview_config = {
                border = "solid",
                style = "minimal",
            },
        })
    end,
}
