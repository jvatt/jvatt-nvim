-- Run buf.format() before writing
vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("AutoFormat", { clear = true }),
  callback = function()
    vim.lsp.buf.format()
  end,
})
