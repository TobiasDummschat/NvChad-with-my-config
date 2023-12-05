local overrides = require("custom.configs.overrides")
local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

local handlers = {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function (server_name) -- default handler (optional)
    lspconfig[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,

  -- Next, you can provide targeted overrides for specific servers.
  ["pylsp"] = function ()
      lspconfig.pylsp.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          pylsp = {
            plugins =  {
              pycodestyle = {
                enabled = false,
              }
            }
          }
        }
      }
  end,

  ["groovyls"] = function ()
      lspconfig.groovyls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = {"groovy", "Jenkingsfile"}
      }
  end,
}

mason_lspconfig.setup({
  automatic_installation = true,
  ensure_installed = overrides.lspconfig.ensure_installed,
  handlers = handlers,
})
