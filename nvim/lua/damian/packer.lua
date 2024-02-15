return require('packer').startup(function()
  use { "wbthomason/packer.nvim" }
  -- use { "folke/tokyonight.nvim" }
  use { "Mofiqul/dracula.nvim" }
  use { "nvim-treesitter/nvim-treesitter", run = ':TSUpdate' }
  use { "nvim-treesitter/playground" }
  use { "tpope/vim-fugitive" }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
    
  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use { 'mhartington/formatter.nvim' }
  use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use { 'windwp/windline.nvim' }
  use { 'ggandor/lightspeed.nvim' }
  use { "zbirenbaum/copilot.lua" }
  use { "mbbill/undotree" }

  use {
    "jose-elias-alvarez/buftabline.nvim",
    requires = {"kyazdani42/nvim-web-devicons"}, -- optional!
    config = function() require("buftabline").setup {} end
    }

  use {'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true }}
  use {'airblade/vim-gitgutter'}
  use {'kdheepak/lazygit.nvim'}

use {
  "rest-nvim/rest.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("rest-nvim").setup({
      -- Open request results in a horizontal split
      result_split_horizontal = false,
      -- Keep the http file buffer above|left when split horizontal|vertical
      result_split_in_place = false,
      -- Skip SSL verification, useful for unknown certificates
      skip_ssl_verification = false,
      -- Encode URL before making request
      encode_url = true,
      -- Highlight request on run
      highlight = {
        enabled = true,
        timeout = 150,
      },
      result = {
        -- toggle showing URL, HTTP info, headers at top the of result window
        show_url = true,
        show_http_info = true,
        show_headers = true,
        -- executables or functions for formatting response body [optional]
        -- set them to false if you want to disable them
        formatters = {
          json = "jq",
          html = function(body)
            return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
          end
        },
      },
      -- Jump to request line on run
      jump_to_request = false,
      env_file = '.env',
      custom_dynamic_variables = {},
      yank_dry_run = true,
    })
  end
}
end)
