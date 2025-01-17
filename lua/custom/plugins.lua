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
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("plugins.configs.treesitter")
      require("custom.configs.treesitter")
    end,
    keys = {
      { "<c-space>", desc = "Increment Selection" },
      { "<bs>", desc = "Decrement Selection", mode = "x" },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    build = ":TSUpdate",
    lazy = false,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("custom.configs.treesitter-textobjects")
    end,
  },

  {
    "drybalka/tree-climber.nvim",
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

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = {"Trouble", "TroubleToggle"}
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
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function ()
      require("custom.configs.neotest")
    end
  },

  {
    "nvim-neotest/neotest-python",
    dependencies = { "nvim-neotest/neotest" },
  },

  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "DiffviewOpen", "DiffviewFileHistory"},
    config = {
      view = {
        merge_tool = {
          layout = "diff3_mixed",
        }
      }
    },
  },

  {
    "zbirenbaum/copilot.lua",
    cmd = {"Copilot"},
    event = "InsertEnter",
    config = function ()
      require("copilot").setup({
        panel = {
          auto_refresh = true,
        },
        suggestion = {
          auto_trigger = true,
          accept = "<M-l>",
          next = "<M-j>",
          prev = "<M-k>",
          dismiss = "<M-h>",
        }
      })
    end,
  },

  {
    "vhyrro/luarocks.nvim",
    priority = 1001, -- this plugin needs to run before anything else
    opts = {
      rocks = { "magick" },
    },
  },
  {
    "3rd/image.nvim",
    dependencies = { "luarocks.nvim" },
    version = "1.3.0",
    ft = "markdown",
    opts = {
      backend = "kitty", -- Kitty will provide the best experience, but you need a compatible terminal
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown" }, -- markdown extensions (ie. quarto) can go here
        },
      }, -- do whatever you want with image.nvim's integrations
      max_width = 100, -- tweak to preference
      max_height = 12, -- ^
      max_height_window_percentage = math.huge, -- this is necessary for a good experience
      max_width_window_percentage = math.huge,
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
    config = function()
      require("image").setup()
    end
  },

  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      require("custom.configs.molten")
    end,
  },

}

return plugins

