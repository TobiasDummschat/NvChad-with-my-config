local providers_to_enable = {
  "python3_provider"
}

for _, plugin in pairs(providers_to_enable) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end

vim.g.python3_host_prog = vim.api.nvim_list_runtime_paths()[1] .. "/.venv/bin/python"
