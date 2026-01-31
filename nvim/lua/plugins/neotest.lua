return {
    "nvim-neotest/neotest",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "nvim-neotest/neotest-jest",
    },
    config = function()
        ---@diagnostic disable-next-line: missing-fields
        require("neotest").setup({
            adapters = {
                require("neotest-jest")({
                    jestCommand = "npm test --",
                    cwd = function()
                        return vim.fn.getcwd()
                    end,
                })
            }
        })
    end,
    keys = {
        {
            "<leader>tt",
            "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>",
            desc = "Run test of current file"
        },
        {
            "<leader>ta",
            "<cmd>lua require('neotest').run.run({ suite = true })<cr>",
            desc = "Run all nvim-treesitter"
        },
        {
            "<leader>to",
            "<cmd>lua require('neotest').output.open({ last_run = true })<cr>",
            desc = "Show test output"
        },
        {
            "<leader>tp",
            "<cmd>lua require('neotest').output_panel.toggle()<cr>",
            desc = "Show test panel"
        },
        {
            "<leader>ts",
            "<cmd>lua require('neotest').summary.toggle()<cr>",
            desc = "Toggle summary"
        }
    }
}
