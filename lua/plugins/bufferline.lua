return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {},
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup {
            options = {
                show_tab_indicators = true,
                indicator = {
                    style = "underline",
                },
                show_buffer_close_icons = true,
                separator_style = "thin",
                always_show_bufferline = true,
                diagnostics = false,
                themable = true,
                mode = 'buffers',
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "left",
                        separator = true
                    }
                },
            },
        }
    end
}
