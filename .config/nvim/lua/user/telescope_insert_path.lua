local path_actions = require("telescope_insert_path")

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<C-f>"] = path_actions.insert_reltobufpath_a_insert,
      }
    }
  }
}

