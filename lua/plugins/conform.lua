return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    formatters_by_ft = {
      astro = { 'prettierd' },
      lua = { 'stylua' },
      javascript = { 'eslint_d' },
      typescript = { 'prettierd' },
      vue = { 'prettierd' },
      rust = { 'rustfmt' },
      python = { 'ruff' },
      sql = { 'sqruff' },
      json = { 'biome' },
    },
  },
}
