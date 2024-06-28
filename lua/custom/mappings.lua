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
    -- Tree-Climber
    ["<C-h>"] = {':lua require("tree-climber").goto_parent({highlight = true, skip_comments = true, timeout = 250})<CR>', "Go to parent node"},
    ["<C-l>"] = {':lua require("tree-climber").goto_child({highlight = true, skip_comments = true, timeout = 250})<CR>', "Go to child node"},
    ["<C-j>"] = {':lua require("tree-climber").goto_next({highlight = true, skip_comments = true, timeout = 250})<CR>', "Go to next node"},
    ["<C-k>"] = {':lua require("tree-climber").goto_prev({highlight = true, skip_comments = true, timeout = 250})<CR>', "Go to previous node"},
    ["<C-A-j>"] = {':lua require("tree-climber").swap_next({highlight = true, skip_comments = true, timeout = 250})<CR>', "Swap with next node"},
    ["<C-A-k>"] = {':lua require("tree-climber").swap_prev({highlight = true, skip_comments = true, timeout = 250})<CR>', "Swap with previous node"},

    -- TrueZen
    ["<leader>zn"] = {":TZNarrow<CR>", "TrueZen Narrow"},
    ["<leader>zf"] = {":TZFocus<CR>", "TrueZen Focus"},
    ["<leader>zm"] = {":TZMinimalist<CR>", "TrueZen Minimalist"},
    ["<leader>za"] = {":TZAtaraxis<CR>", "TrueZen Ataraxis"},

    -- Molten / IPython / Jupyter
    ["<leader>ea"] = {":MoltenReevaluateAll<CR>", "Reevaluate All (Molten)"},
    ["<leader>el"] = {":MoltenEvaluateLine<CR>", "Evaluate Line (Molten)"},
    ["<leader>eo"] = {":MoltenEvaluateOperator<CR>", "Evaluate Operator (Molten)"},
    ["<leader>ec"] = {":MoltenReevaluateCell<CR>", "Reevaluate Cell (Molten)"},
    ["<leader>ep"] = {"vip:<C-u>MoltenEvaluateVisual<CR>", "Evaluate Paragraph (Molten)"},
    ["<leader>ef"] = {"vaf:<C-u>MoltenEvaluateVisual<CR>", "Evaluate Function (Molten)"},
    ["<leader>ei"] = {":MoltenInterrupt<CR>", "Kernel Interrupt (Molten)"},
    ["<leader>er"] = {":MoltenRestart<CR>", "Kernel Restart (Molten)"},
    ["<leader>ed"] = {":MoltenDelete<CR>", "Delete Cell (Molten)"},
    ["<leader>es"] = {":noautocmd MoltenEnterOutput<CR>", "Show / Enter Output (Molten)"},

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
    ["<leader>e"] = {":<C-u>MoltenEvaluateVisual<CR>", "Evaluate Visual (Molten)"},
  },
}

return M

