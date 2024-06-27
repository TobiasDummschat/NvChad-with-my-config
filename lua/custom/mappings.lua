local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>e"] = {}
  },
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

    -- Molten
    ["<leader>mi"] = {":MoltenInit python3<CR>", "Molten Start"},
    ["<leader>mx"] = {":MoltenInterrupt<CR>", "Molten Interrupt"},
    ["<leader>mr"] = {":MoltenRestart<CR>", "Molten Restart"},
    ["<leader>el"] = {":MoltenEvaluateLine<CR>", "Molten Evaluate Line"},
    ["<leader>eo"] = {":MoltenEvaluateOperator<CR>", "Molten Evaluate Operator"},
    ["<leader>ec"] = {":MoltenReevaluateCell<CR>", "Molten Reevaluate Cell"},
    ["<leader>ep"] = {"vip:<C-u>MoltenEvaluateVisual<CR>", "Molten Evaluate Paragraph"},
    ["<leader>md"] = {":MoltenDelete<CR>", "Molten Delete Cell"},
    ["<leader>mo"] = {":MoltenShowOutput<CR>:noautocmd MoltenEnterOutput<CR>", "Molten Open Output"},

    -- Neotest
    ["<leader>tr"] = {':lua require("neotest").run.run()<CR>', "Neotest: Run nearest test"},
    ["<leader>tt"] = {':lua require("neotest").run.run_last()<CR>', "Neotest: Run last test"},
    ["<leader>tf"] = {':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', "Neotest: Run tests in file"},
    ["<leader>td"] = {':lua require("neotest").run.run({strategy = "dap"})<CR>', "Neotest: Debug nearest test"},
    ["<leader>tx"] = {':lua require("neotest").run.stop()<CR>', "Neotest: Stop nearest test"},
    ["<leader>ta"] = {':lua require("neotest").run.attach()<CR>', "Neotest: Attach to nearest test"},
    ["<leader>to"] = {':lua require("neotest").output_panel.toggle()<CR>', "Neotest: Toggle output panel"},
    ["<leader>tc"] = {':lua require("neotest").output_panel.clear()<CR>', "Neotest: Clear output panel"},
    ["<leader>ts"] = {':lua require("neotest").summary.toggle()<CR>', "Neotest: Toggle summary"},

    -- Trouble
    ["<leader>dl"] = {":TroubleToggle<CR>", "Diagnostics list"},

    -- Diffview
    ["<leader>dv"] = {":DiffviewOpen<CR>", "Open Diffview"},
    ["<leader>cn"] = {"]x", "Next conflict"},
    ["<leader>cp"] = {"[x", "Previous conflict"},
  },
  i =  {},
  v = {
    -- TrueZen
    ["<leader>zn"] = {":'<,'>TZNarrow<CR>", "TrueZen Narrow"},

    -- Molten
    ["<leader>mev"] = {":<C-u>MoltenEvaluateVisual<CR>", "Molten Evaluate Visual"},
  },
}

return M

