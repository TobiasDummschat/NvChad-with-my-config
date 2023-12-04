-- Highlight Jenkinsfile as groovy
vim.filetype.add({
  filename = {
    ["Jenkinsfile"] = "groovy",
  }
})

require("custom.providers")
