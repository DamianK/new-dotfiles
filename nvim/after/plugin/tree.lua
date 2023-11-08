require'nvim-tree'.setup {
  filters = {
    custom = {".git", "node_modules", ".vscode"}
  },
  git = {
    ignore = false
  },
  view = {
    float = {
      enable = false
    }
  }
}
vim.keymap.set('n', '<C-n>', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>ff', vim.cmd.NvimTreeFindFile)
