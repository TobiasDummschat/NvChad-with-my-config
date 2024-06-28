-- leader and local leader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Highlight Jenkinsfile as groovy
vim.filetype.add({
  filename = {
    ["Jenkinsfile"] = "groovy",
  }
})

require("custom.providers")
