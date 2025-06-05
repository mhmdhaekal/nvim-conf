return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    window = {
      width = 30,
    },
  },
  config = function()
    vim.keymap.set('n', '-', ':Neotree position=current<CR>', { desc = 'Open Neotree at current file' })
  end,
}
