return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        integrations = {
          blink_cmp = true,
          snacks = {
            enabled = true,
          },
          noice = true,
        },
        transparent_background = false,
      }
    end,
  },
}
