vim.pack.add {
  {
    src = 'https://github.com/mrcjkb/rustaceanvim',
    -- To avoid being surprised by breaking changes,
    -- I recommend you set a version range
    version = vim.version.range '^9',
  },
}

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.rs',
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})
