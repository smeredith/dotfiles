local daily = require("daily-notes")

daily.setup({
  writing = {
    root = "./journal",
    day = {
            filename = "%Y-%m-%d",
            template = "# %Y-%m-%d"
    }
  }
})

