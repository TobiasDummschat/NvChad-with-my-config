-- custom/chadrc.lua meant to override that table in default_config.lua file

local M = {}

M.ui = {
  theme = "catppuccin",
  transparency = true,

  lsp_semantic_tokens = true,

  nvdash = {
    load_on_startup = true,
  }
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
