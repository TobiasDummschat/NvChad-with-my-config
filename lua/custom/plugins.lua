local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  -- Theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
  },

  {
   "williamboman/mason.nvim",
   opts = overrides.mason,
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {"williamboman/mason.nvim"},
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("custom.configs.lspconfig")
    end,
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "LspInfo", "LspInstall", "LspUninstall" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- this opts will extend the default opts 
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("plugins.configs.treesitter")
      require("custom.configs.treesitter")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },

  {
    "mfussenegger/nvim-dap",
    config = function ()
      require("custom.configs.dap")
    end
  },

  {
    "mfussenegger/nvim-dap-python",
    dependencies = {"mfussenegger/nvim-dap"},
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap"},
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 100,
      }
    }
  },

  -- You can use any plugin specification from lazy.nvim
  {
    "Pocco81/true-zen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist", "TZNarrow", "TZFocus" },
  },



  {
   "folke/trouble.nvim",
   dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "ggandor/leap.nvim",
    config = function()
      require('leap').add_default_mappings()
    end,
    dependencies = {"tpope/vim-repeat"},
    lazy = false,
  },

  {
    "ggandor/flit.nvim",
    config = function()
      require("flit").setup()
    end,
    dependencies = {"leap.nvim"},
    lazy = false,
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({})
    end,
  },

  {
    "dccsillag/magma-nvim",
  }
}

return plugins

