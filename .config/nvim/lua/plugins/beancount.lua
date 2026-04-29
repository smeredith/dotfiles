return {
    "hxueh/beancount.nvim",
    ft = { "beancount", "bean" },
    dependencies = {
        {
            "saghen/blink.cmp",
            version = "1.*",
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
            separator_column = 75,
            instant_alignment = true,
            auto_format_on_save = true,
            auto_fill_amounts = true,
            inlay_hints = true,
            auto_save_before_check = false,
            snippets = {
                enabled = true,             -- Enable snippet support
                date_format = "%Y-%m-%d",   -- Date format for snippets
            },
        })
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "beancount" },
            callback = function(args)
                vim.treesitter.start(args.buf)
                vim.opt_local.foldenable = false
                vim.opt_local.foldmethod = "manual"
                vim.opt.tabstop = 2
                vim.opt.softtabstop = 2
                vim.opt.shiftwidth = 2

            end,
        })
    end,
}
