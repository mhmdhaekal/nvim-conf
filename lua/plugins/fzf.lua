return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function()
    vim.keymap.set("n", "<leader>sf", ":FzfLua files<CR>", { desc = "Open FzF lua files" })
    vim.keymap.set("n", "<leader>sb", ":FzfLua buffers<CR>", { desc = "Open FzF lua buffers" })
    vim.keymap.set("n", "<leader>sq", ":FzfLua quickfix<CR>", { desc = "Open FzF lua quickfix" })
    vim.keymap.set("n", "<leader>ss", ":FzfLua<CR>", { desc = "Open FzF lua" })
    vim.keymap.set("n", "<leader>sg", ":FzfLua live_grep<CR>", { desc = "Open FzF lua live grep curproject" })
    vim.keymap.set("n", "<leader>s/", ":FzfLua grep_curbuf<CR>", { desc = "Open FzF lua live grep curbuf" })
    vim.keymap.set("n", "<leader>sd", ":FzfLua diagnostics_document<CR>", { desc = "Open FzF lua diagnostics_document" })
    vim.keymap.set("n", "<leader>sx", ":FzfLua diagnostics_workspace<CR>",
      { desc = "Open FzF lua diagnostics_workspace" })
  end
}
