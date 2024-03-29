require('basics')
require('colors')
require('telescope-config')
require('lazygit-config')
require('lsp')
require('cmp-config')
-- require('coc-config')
require('lualine').setup()
require('git-config')
require('diffview-config')
require('toggleterm-config')
require('autopairs-config')
require('autosave-config')
require'nvim-tree'.setup {}
require('nvim-treesitter.configs').setup {
  ensure_installed = {'javascript', 'go'},
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
}

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- use {'neoclide/coc.nvim', branch = 'release'}
  use {'fatih/vim-go'}
  use 'folke/tokyonight.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  -- icons for autocomplete
  use('onsails/lspkind-nvim')

  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'ThePrimeagen/git-worktree.nvim'
  use 'Pocco81/AutoSave.nvim'
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use {'majutsushi/tagbar'}
  use { "kyazdani42/nvim-tree.lua", requires = {
        "kyazdani42/nvim-web-devicons", config = function ()
          require('nvim-tree').setup({
              update_focused_file = {
                enable = true,
                update_cwd = true,
                ignore_list = {},
            },
      })
        end
      },
  }
  use'psliwka/vim-smoothie'
  use {'simrat39/symbols-outline.nvim', cmd = "SymbolsOutline", }
  use {"akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
      require("toggleterm").setup({
    })
    end
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use 'windwp/nvim-autopairs'
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
  use 'p00f/nvim-ts-rainbow'
  use {'iamcco/markdown-preview.nvim',
    run = 'cd app && npm install',
    setup = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' }
  }
  use {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
    }
  end
}
end)

