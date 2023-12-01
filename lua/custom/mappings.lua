local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {},
  i =  {},
  v = {},
}

-- Your custom mappings
M.abc = {
  n = {
    -- TrueZen
    ["<leader>zn"] = {":TZNarrow<CR>", "TrueZen Narrow"},
    ["<leader>zf"] = {":TZFocus<CR>", "TrueZen Focus"},
    ["<leader>zm"] = {":TZMinimalist<CR>", "TrueZen Minimalist"},
    ["<leader>za"] = {":TZAtaraxis<CR>", "TrueZen Ataraxis"},
  },
  i =  {},
  v = {
    ["<leader>zn"] = {":'<,'>TZNarrow<CR>", "TrueZen Narrow"},
  },
}

return M

