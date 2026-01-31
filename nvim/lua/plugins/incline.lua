return {
    'b0o/incline.nvim',
    dependencies = {
        'nvim-web-devicons'
    },
    config = true,
    event = 'VeryLazy',
    opts = {
        window = {
            padding = 0,
            margin = { horizontal = 0 },
        },
        render = function(props)
            local helpers = require 'incline.helpers'
            local devicons = require 'nvim-web-devicons'
            local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
            if filename == '' then
                filename = '[No Name]'
            end
            local ft_icon, ft_color = devicons.get_icon_color(filename)
            local modified = vim.bo[props.buf].modified
            local bgcol = props.focused and '#A6E3A1' or '#44406e'
            return {
                --ft_icon and { ' ', ft_icon, ' ', guibg = ft_color, guifg = helpers.contrast_color(ft_color) } or '',
                ' ',
                { filename, gui = modified and 'bold,italic' or 'bold', guifg = '#111111' },
                ' ',
                guibg = bgcol,
            }
        end,
    }
}
