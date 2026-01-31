return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true, example = "github" },
        explorer = { enabled = true, hidden = true, ignored = true, exclude = { "node_modules", ".git" }, },
        indent = { enabled = true },
        input = { enabled = true },
        picker = { enabled = true, exclude = {"node_modules", ".git"}, hidden = true, ignored = true, },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
    },
    keys = {
        { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
        { "<c-\\>", function() Snacks.terminal() end, desc = "Toggle Terminal", mode = {"n","t"} },

        { "<leader>pn", function() Snacks.picker.notifications() end, desc = "Notification History" },
        { "<leader>pe", function() Snacks.picker.buffers() end, desc = "Buffers" },
        { "<leader>pp", function() Snacks.picker.smart({ multi = { "buffers", "files" } }) end, desc = "Smart Picker" },
        { "<leader>pg", function() Snacks.picker.grep() end, desc = "Grep Picker" },
        { "<leader>ph", function() Snacks.picker.help() end, desc = "Help Picker" },
        { "<leader>ps", function() Snacks.picker.git_status() end, desc = "Git Status Picker" },
        { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History Picker" },

        { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
        { "<leader>ba", function() Snacks.bufdelete.other() end, desc = "Delete all Buffer" },

        { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
        { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
        { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
        { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
        { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
        { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
        { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
    }
}
