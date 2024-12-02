local which_key = require("which-key")

local options = {
    preset = "modern",
}

local mappings = {
  { "<leader>c", "<cmd>bdelete!<cr>", desc="Close Buffer" },
  { "<leader>h", "<cmd>nohlsearch<cr>", desc="No Highlight" },
  { "<leader>s", group = "search" },
  { "<leader>sb", "<cmd>Telescope buffers<cr>", desc="Buffers" },
  { "<leader>sc", "<cmd>Telescope commands<cr>", desc="Commands" },
  { "<leader>sf", "<cmd>Telescope find_files<cr>", desc="Find Files" },
  { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc="Live Grep" },
  { "<leader>sG", function() require('telescope.builtin').grep_string({search = vim.fn.input('Rg> ')}) end, desc="Live Grep" },
  { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc="Keymaps" },
  { "<leader>sl", "<cmd>Telescope resume<cr>", desc="Resume Last Search" },
  { "<leader>sr", "<cmd>Telescope oldfiles<cr>", desc="Open Recent File" },
  { "<leader>sR", "<cmd>Telescope registers<cr>", desc="Registers" },
  { "<leader>w", "<cmd>set wrap!<cr>", desc="Toggle Wrap" },
  { "<leader>z", "<cmd>set spell!<cr>", desc="Toggle Spellcheck" },
}

which_key.setup(options)
which_key.add(mappings)
