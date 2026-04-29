return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  ensure_installed = { "beancount" },
    highlight = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = true },
}
