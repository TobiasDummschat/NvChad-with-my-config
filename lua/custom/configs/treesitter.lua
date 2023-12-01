local overrides = require("custom.configs.overrides")

require("nvim-treesitter.configs").setup({
  ensure_installed = overrides.treesitter.ensure_installed,
  indent = { enable = true },
})
