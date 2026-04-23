return {
    "hxueh/beancount.nvim",
    ft = { "beancount", "bean" },
    dependencies = {
        {
            "saghen/blink.cmp",
            version = "1.*",
            dependencies = { "saghen/blink.lib", version = "1.*" },
            build = function() require("blink.cmp").build():wait(60000) end,
            opts = function(_, opts)
                opts.sources = opts.sources or {}
                opts.sources.default = opts.sources.default or { "lsp", "path", "snippets", "buffer" }
                table.insert(opts.sources.default, "beancount")
                opts.sources.providers = opts.sources.providers or {}
                opts.sources.providers.beancount = {
                    name = "beancount",
                    module = "beancount.completion.blink",
                    score_offset = 100,
                }
                return opts
            end,
        },
        {
            "L3MON4D3/LuaSnip",
        },
    },
    config = function()
        require("beancount").setup({
            python_path = vim.fn.expand("~/.local/share/pipx/venvs/beancount/bin/python"),
            separator_column = 60,
            auto_fill_amounts = true,
            instant_alignment = false,
        })
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "beancount", "bean" },
            callback = function()
                vim.wo.foldlevel = 99
            end,
        })
    end,
}
