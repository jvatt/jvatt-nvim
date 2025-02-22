local M = {}
M.setup = function(capabilities)
  local lspconfig = require("lspconfig")

  lspconfig.graphql.setup({
    root_dir = lspconfig.util.root_pattern(".graphqlconfig", ".graphqlrc", "package.json", "graphql.config.yml"),
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = capabilities,
  })
end

return M
