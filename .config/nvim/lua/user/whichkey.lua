local which_key = require("which-key")

local options = {
    preset = "modern",
    icons = {
      -- no icons
      mappings = false,
      keys = {
        Up = " ",
        Down = " ",
        Left = " ",
        Right = " ",
        C = "󰘴 ",
        M = "󰘵 ",
        D = "󰘳 ",
        S = "󰘶 ",
        CR = "󰌑 ",
        Esc = "esc ",
        ScrollWheelDown = "󱕐 ",
        ScrollWheelUp = "󱕑 ",
        NL = "󰌑 ",
        BS = "bs ",
        Space = "󱁐 ",
        Tab = "󰌒 ",
        F1 = "󱊫",
        F2 = "󱊬",
        F3 = "󱊭",
        F4 = "󱊮",
        F5 = "󱊯",
        F6 = "󱊰",
        F7 = "󱊱",
        F8 = "󱊲",
        F9 = "󱊳",
        F10 = "󱊴",
        F11 = "󱊵",
        F12 = "󱊶",
      },
    }
}

local mappings = {
  { "<leader>c", "<cmd>bdelete!<cr>", desc="Close Buffer" },
  { "<leader>d",  function() vim.cmd("edit " .. string.format("%s/%s.md", vim.fn.expand("journal"), os.date("%Y-%m-%d"))) end, desc="Open Daily Note" },
  { "<leader>t", group = "Toggle" },
  { "<leader>s", group = "Search" },
  { "<leader>sb", "<cmd>Telescope buffers<cr>", desc="Buffers" },
  { "<leader>sc", "<cmd>Telescope commands<cr>", desc="Commands" },
  { "<leader>sf", "<cmd>Telescope find_files<cr>", desc="Find Files" },
  { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc="Live Grep" },
  { "<leader>sG", function() require('telescope.builtin').grep_string({search = vim.fn.input('Rg> ')}) end, desc="grep" },
  { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc="Keymaps" },
  { "<leader>sl", "<cmd>Telescope resume<cr>", desc="Resume Last Search" },
  { "<leader>sr", "<cmd>Telescope oldfiles<cr>", desc="Open Recent File" },
  { "<leader>sR", "<cmd>Telescope registers<cr>", desc="Registers" },
  { "<leader>tg", function() require('gitsigns').toggle_signs() end, desc="Git Signs" },
  { "<leader>th", "<cmd>set hlsearch!<cr>", desc="Highligh Search" },
  { "<leader>tn", "<cmd>set number!<cr>", desc="Line Number" },
  { "<leader>tw", "<cmd>set wrap!<cr>", desc="Wrap" },
  { "<leader>tz", "<cmd>set spell!<cr>", desc="Spellcheck" },
}

which_key.setup(options)
which_key.add(mappings)
