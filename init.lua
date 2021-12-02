require('basic')
require('color')
require('telescope')
require('lsp')
require('treesitter')
require('coderunner')
require('lualine').setup()
require('gitsigns').setup()

local use = require('packer').use

require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  --old
  use {
    "blackCauldron7/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }

  use {
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    run = 'cd app && yarn install'
  }

  use 'mattn/emmet-vim'

  -- Code commenter
  use 'preservim/nerdcommenter'

  -- NERDTree
  use 'preservim/nerdtree'


  -- common
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  -- themes
  -- use 'morhetz/gruvbox'
  use 'sainnhe/gruvbox-material'
  use {'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}}

end)


