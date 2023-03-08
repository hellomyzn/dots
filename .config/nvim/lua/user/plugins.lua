-- REF: https://github.com/wbthomason/packer.nvim#bootstrapping
-- Bootstrapping
-- Install packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Initialize packer
require('packer').reset()
require('packer').init({
  compile_path = vim.fn.stdpath('data')..'/site/plugin/packer_compiled.lua',
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end,
  },
})

local use = require('packer').use
-- Let packer manage itself
use('wbthomason/packer.nvim')

-- Commenting support.
-- https://github.com/tpope/vim-commentary	
use('tpope/vim-commentary')

-- Add, Change, and delete surrounding text.
-- https://github.com/tpope/vim-surround
use('tpope/vim-surround')

-- Useful commands like :Rename, :SudoWrite
-- https://github.com/tpope/vim-eunuch
use('tpope/vim-eunuch')

-- Pairs of handy bracket mappings, like [b and ]d
-- Adds [b and other handy mappings
-- https://github.com/tpope/vim-unimpaired
use('tpope/vim-unimpaired')

-- Indent autodetection with editorconfig support
-- https://github.com/tpope/vim-sleuth
use('tpope/vim-sleuth') 

-- Allow plugins to enable repeating of commands. 
-- https://github.com/tpope/vim-repeat 
 use('tpope/vim-repeat')

-- Add more languages.
use('sheerun/vim-polyglot')

-- Navigate seemlesly between Vim windows and Tmux panes
-- https://github.com/christoomey/vim-tmux-navigator
use('christoomey/vim-tmux-navigator')

-- Jump to the last location when opening a file
-- https://github.com/farmergreg/vim-lastplace
use('farmergreg/vim-lastplace')

-- Enable * searching with visually selected text.
-- https://github.com/nelstrom/vim-visual-star-search
use('nelstrom/vim-visual-star-search')

-- Automatically create parent dirs when saving
-- https://github.com/jessarcher/vim-heritage
use('jessarcher/vim-heritage') 

-- Automatically set the working directory to the project root
-- https://github.com/airblade/vim-rooter
use({
  'airblade/vim-rooter',
  setup = function()
    vim.g.rooter_manual_only = 1
  end,
  config = function()
    vim.cmd('Rooter')
  end,
})

-- Automatically add closing brackets, quates, etc.
-- https://github.com/windwp/nvim-autopairs
use({
  'windwp/nvim-autopairs',
  config = function()
    require('nvim-autopairs').setup()
  end,
})

-- Add smooth scrolling to avoid jerring jumps
-- https://github.com/karb94/neoscroll.nvim
use({
  'karb94/neoscroll.nvim',
  config = function()
    require('user.plugins.neoscroll')
  end,
})

-- All closing buffers without closing the split window
-- https://github.com/famiu/bufdelete.nvim
use({
  'famiu/bufdelete.nvim',
  config = function()
    vim.keymap.set('n', '<Leader>q', ':Bdelete<CR>')
  end,
})

-- Split arrays and methods onto mulpiple lines or join them back
-- https://github.com/AndrewRadev/splitjoin.vim
use({
  'AndrewRadev/splitjoin.vim',
  config = function()
    require('user.plugins.splitjoin')
  end,
})

-- Automatically fix indentation when pasting code.
-- https://github.com/sickill/vim-pasta
use({
  'sickill/vim-pasta',
  config = function()
    require('user.plugins.pasta')
  end,
})


-- One dark theme
-- https://github.com/folke/tokyonight.nvim
use({
  'jessarcher/onedark.nvim',
  -- 'folke/tokyonight.nvim',
  config = function()
    vim.cmd('colorscheme onedark')
    -- vim.cmd('colorscheme tokyonight-night')
 
    vim.api.nvim_set_hl(0, "Normal", {
      fg = white, 
      bg = black 
    })

  -- Hide the characters in FloatBorder
  vim.api.nvim_set_hl(0, 'FloatBorder', {
      fg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
      bg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
    })

  -- Make the StatusLineNonText background the same as StatusLine
  vim.api.nvim_set_hl(0, 'StatusLineNonText', {
      fg = vim.api.nvim_get_hl_by_name('NonText', true).foreground,
      bg = vim.api.nvim_get_hl_by_name('StatusLine', true).background,
    })

  -- Hide the characters in CursorLineBg
  vim.api.nvim_set_hl(0, 'CursorLineBg', {
      fg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
      bg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
    })

  vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { fg = '#30323E' }) 
  vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = '#2F313C' })
  end,
})

-- file manager
-- https://github.com/nvim-telescope/telescope.nvim
use({
  'nvim-telescope/telescope.nvim',
  requires = {
    { 'nvim-lua/plenary.nvim' },
    { 'kyazdani42/nvim-web-devicons' },
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    { 'nvim-telescope/telescope-live-grep-args.nvim' },
  },
  config = function()
    require('user.plugins.telescope')
  end,
})

-- File tree slider
-- https://github.com/nvim-tree/nvim-tree.lua
use({
  'kyazdani42/nvim-tree.lua',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function()
    require('user.plugins.nvim-tree')
  end,
})

-- A status line.
-- https://github.com/nvim-lualine/lualine.nvim
use({
  'nvim-lualine/lualine.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function()
    require('user.plugins.lualine')
    -- require('lualine').setup()
  end,
})

-- Display buffers as tabs
-- https://github.com/akinsho/bufferline.nvim
use({
  'akinsho/bufferline.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  after = 'onedark.nvim',
  config = function()
    require('user.plugins.bufferline')
  end,
})

-- Display indentation lines.
-- https://github.com/lukas-reineke/indent-blankline.nvim
use({
  'lukas-reineke/indent-blankline.nvim',
  config = function()
    require('user.plugins.indent-blankline')
  end,
})

-- Add a dashboard.
-- https://github.com/glepnir/dashboard-nvim
use({
  'glepnir/dashboard-nvim',
  config = function()
    require('user.plugins.dashboard-nvim')
  end,
})

-- Git integration.
-- https://github.com/lewis6991/gitsigns.nvim
use({
  'lewis6991/gitsigns.nvim',
  requires = 'nvim-lua/plenary.nvim',
  config = function()
    require('gitsigns').setup({
        sign_priority = 20,
        on_attach = function(bufnr)
        -- vim.keymap.set('n', ']h', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true, buffer = bufnr })
        -- vim.keymap.set('n', '[h', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true, buffer = bufnr })
        vim.keymap.set('n', ']h', ':Gitsigns next_hunk<CR>')
        vim.keymap.set('n', '[h', ':Gitsigns prev_hunk<CR>')
        vim.keymap.set('n', 'gs', ':Gitsigns stage_hunk<CR>')
        vim.keymap.set('n', 'gS', ':Gitsigns undo_stage_hunk<CR>')
        vim.keymap.set('n', 'gp', ':Gitsigns preview_hunk<CR>')
        vim.keymap.set('n', 'gb', ':Gitsigns blame_line<CR>')
      end,
    })
  end,
})

-- Git commands
-- https://github.com/tpope/vim-fugitive
use({
  'tpope/vim-fugitive',
  requires = 'tpope/vim-rhubarb',
  cmd = 'G',
})

-- Floating terminal.
-- https://github.com/voldikss/vim-floaterm
use({
  'voldikss/vim-floaterm',
  config = function()
    require('user.plugins.floaterm')
  end,
})



-- Frontend
-- HTML
-- Text objects for HTML attributes.
-- https://github.com/whatyouhide/vim-textobj-xmlattr
-- https://github.com/kana/vim-textobj-user
use({
  'whatyouhide/vim-textobj-xmlattr',
  requires = 'kana/vim-textobj-user',
})

-- Automatically set up your configuration after cloning packer.nvim
-- Put this at the end after all plugins
if packer_bootstrap then
    require('packer').sync()
end


-- You can configure Neovim to automatically run :PackerCompile
-- Automatically regenerate compiled loader file on save
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])
