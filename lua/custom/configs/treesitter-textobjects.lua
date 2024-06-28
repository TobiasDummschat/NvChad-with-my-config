require("nvim-treesitter.configs").setup({
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = { query = "@function.outer", desc = "Select around function" },
        ["if"] = { query = "@function.inner", desc = "Select in function" },
        ["ac"] = { query = "@class.outer", desc = "Select around class" },
        ["ic"] = { query = "@class.inner", desc = "Select in class" },
        ["al"] = { query = "@loop.outer", desc = "Select around loop" },
        ["il"] = { query = "@loop.inner", desc = "Select in loop" },
        ["ai"] = { query = "@conditional.outer", desc = "Select around if-conditional" },
        ["ii"] = { query = "@conditional.inner", desc = "Select in if-conditional" },
        ["aa"] = { query = "@parameter.outer", desc = "Select around argument" },
        ["ia"] = { query = "@parameter.inner", desc = "Select in argument" },
        ["as"] = { query = "@scope", query_group = "locals", desc = "Select around scope" },
      },
    },
  },
})

