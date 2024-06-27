local M = {}

M.treesitter = {
 ensure_installed = {
     -- neovim stuff
    "lua",
    "vim",

    -- python stuff
    "python",

    -- web dev / node stuff
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "vue",

    -- c/cpp stuff
    "cpp",
    "cmake",

    -- shell stuff
    "bash",
    "fish",

    -- docker stuff
    "dockerfile",

    -- git stuff
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",

    -- other stuff
    "comment",
    "csv",
    "groovy",
    "ini",
    "json",
    "markdown",
    "markdown_inline",
    "regex",
    "toml",
    "xml",
    "yaml",
  },
  highlight = {enable = true},
}

-- for use with mason-lspconfig
M.lspconfig = {
  ensure_installed = {
    -- lua stuff
    "lua_ls",

    -- python stuff
    "pylsp",
    "ruff_lsp",

    -- web dev / node stuff
    "cssls",
    "html",
    "eslint",
    "tsserver",
    "vuels",

    -- c/cpp stuff
    "clangd",
    "cmake",

    -- shell stuff
    "bashls",

    -- docker stuff
    "dockerls",

    -- other stuff
    "groovyls",
    "jsonls",
    "marksman",
    "yamlls",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "stylua",

    -- python stuff
    "debugpy",

    -- web dev stuff
    "prettier",

    -- c/cpp stuff
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
