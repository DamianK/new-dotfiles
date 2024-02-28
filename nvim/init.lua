require("damian")

require("copilot").setup({
  suggestion = {
    auto_trigger = true,
    keymap = {
      accept = "<C-l>"
    }
  }
})

-- Simple keybinding
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- LSP
local nvim_lsp = require('lspconfig')

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
   local hl = "DiagnosticSign" .. type
   vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Formatter
local formatter_prettier =  {
function()
  return {
    -- exe = "prettier",
    -- args = {
      --   "--stdin-filepath",
      --   vim.api.nvim_buf_get_name(0)
      -- },
      -- stdin = true,
      exe = "prettierd",
      args = {vim.api.nvim_buf_get_name(0)},
      stdin = true
    }
  end
}

require('formatter').setup({
  logging = false,
  filetype = {
    javascript = formatter_prettier,
    javascriptreact = formatter_prettier,
    typescript = formatter_prettier,
    typescriptreact = formatter_prettier,
    json = formatter_prettier,
    graphql = formatter_prettier
  }
})

vim.api.nvim_exec([[
augroup FormatAutogroup
autocmd!
autocmd BufWritePost *.astro,*.ts,*.tsx,*.mjs,*.js,*.jsx,*.json,*.graphql FormatWrite
augroup END
]], true)

vim.api.nvim_command("autocmd BufWritePre *.ex,*.go lua vim.lsp.buf.formatting()")

require('wlsample.airline')

