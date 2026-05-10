return {
    "hxueh/beancount.nvim",
    ft = { "beancount" },
    config = function()
        require("beancount").setup({
            python_path = vim.fn.expand("~/.local/share/pipx/venvs/beancount/bin/python"),
            separator_column = 75,
            instant_alignment = true,
            auto_format_on_save = false,
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
                vim.opt_local.tabstop = 2
                vim.opt_local.softtabstop = 2
                vim.opt_local.shiftwidth = 2

            end,
        })
    end,
}
