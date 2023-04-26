require("telescope").setup{
  defaults = {
    file_ignore_patters = { "yarn.lock", "node_modules/*" }
  }
}
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
