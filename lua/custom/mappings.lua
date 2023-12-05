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

    -- Magma
    ["<leader>mi"] = {":MagmaInit python3<CR>", "Magma Start"},
    ["<leader>mx"] = {":MagmaInterrupt<CR>", "Magma Interrupt"},
    ["<leader>mr"] = {":MagmaRestart<CR>", "Magma Restart"},
    ["<leader>mel"] = {":MagmaEvaluateLine<CR>", "Magma Evaluate Line"},
    ["<leader>meo"] = {":MagmaEvaluateOperator<CR>", "Magma Evaluate Operator"},
    ["<leader>mec"] = {":MagmaReevaluateCell<CR>", "Magma Reevaluate Cell"},
    ["<leader>mdc"] = {":MagmaDelete<CR>", "Magma Delete Cell"},
    ["<leader>mto"] = {":MagmaShowOutput<CR>", "Magma Toggle Output"},
    ["<leader>mep"] = {"vip:<C-u>MagmaEvaluateVisual<CR>", "Magma Evaluate Paragraph"},

    -- Neotest
    ["<leader>tr"] = {':lua require("neotest").run.run()<CR>', "Neotest: Run nearest test"},
    ["<leader>tf"] = {':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', "Neotest: Run tests in file"},
    ["<leader>td"] = {':lua require("neotest").run.run({strategy = "dap"})<CR>', "Neotest: Debug nearest test"},
    ["<leader>ts"] = {':lua require("neotest").run.stop()<CR>', "Neotest: Stop nearest test"},
    ["<leader>ta"] = {':lua require("neotest").run.attach()<CR>', "Neotest: Attach to nearest test"},
    ["<leader>to"] = {':lua require("neotest").output.open({enter=true})<CR>', "Neotest: Show output"},
    ["<leader>tt"] = {':lua require("neotest").summary.toggle()<CR>', "Neotest: Toggle summary"},
  },
  i =  {},
  v = {
    -- TrueZen
    ["<leader>zn"] = {":'<,'>TZNarrow<CR>", "TrueZen Narrow"},

    -- Magma
    ["<leader>mev"] = {":<C-u>MagmaEvaluateVisual<CR>", "Magma Evaluate Visual"},
  },
}

return M

