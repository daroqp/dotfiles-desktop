return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = true,
    opts = {
        options = {
            offsets = {
                {
                    filetype = "snacks_layout_box",
                    text = function() return "Project: " .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t') end,
                    text_align = "center",
                    highlight = "Directory",
                    separator = true
                }
            },
        }
    }
}
