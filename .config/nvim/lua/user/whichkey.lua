local which_key = require("which-key")

local options = {
    preset = "modern",
}

local mappings = {
  { "<leader>c", "<cmd>bdelete!<cr>", desc="Close Buffer" },
  { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc="Explorer" },
  { "<leader>h", "<cmd>nohlsearch<cr>", desc="No Highlight" },
  { "<leader>w", "<cmd>set wrap!<cr>", desc="Toggle Wrap" },
  { "<leader>s", group = "search" },
  { "<leader>sb", "<cmd>Telescope buffers<cr>", desc="Buffers" },
}

which_key.setup(options)
which_key.add(mappings)
