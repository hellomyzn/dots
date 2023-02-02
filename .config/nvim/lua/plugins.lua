local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
        PACKER_BOOTSTRAP = fn.system({
                "git",
                "clone",
                "--depth",
                "1",
                "https://github.com/wbthomason/packer.nvim",
                install_path,
        })
        print("Installing packer close and reopen Neovim...")
        vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
        return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
    
    use({ "wbthomason/packer.nvim" })
    use({ "nvim-lua/plenary.nvim" }) -- Common utilities

    -- nvim-treesitter: https://github.com/nvim-treesitter/nvim-treesitter
    use {'nvim-treesitter/nvim-treesitter'}

    -- nvim-orgmode: https://github.com/nvim-orgmode/orgmode
    use {'nvim-orgmode/orgmode', 
        config = function()
        require('orgmode').setup{}
    end}

    -- nvim-cmp: https://github.com/hrsh7th/nvim-cmp
    -- RECOMMENDED: orgmode
    use {'hrsh7th/nvim-cmp', 
        config = function()
        require('cmp').setup({
            sources = {
              { name = 'orgmode' }
            }
          })
    end}

    -- -- onedark.nvim: https://github.com/navarasu/onedark.nvim
    -- -- RECOMMENDED: orgmode
    -- use {'navarasu/onedark.nvim', config = function()
    --     require('onedark').setup {
    --         style = 'deep'
    --     }
    --     require('onedark').load()
    -- end}

    -- -- Headlines.nvim: https://github.com/lukas-reineke/headlines.nvim
    -- -- RECOMMENDED: orgmode
    -- use {'lukas-reineke/headlines.nvim', config = function()
    --     require('headlines').setup()
    -- end}

    -- Org-bullets.nvim: https://github.com/akinsho/org-bullets.nvim
    -- RECOMMENDED: orgmode
    use {'akinsho/org-bullets.nvim', 
        config = function()
        require('org-bullets').setup()
    end}


    -- vim-table-mode: https://github.com/dhruvasagar/vim-table-mode
    -- RECOMMENDED: orgmode
    use {'dhruvasagar/vim-table-mode'}

    -- markdown-preview.nvim: https://github.com/iamcco/markdown-preview.nvim
    use({"iamcco/markdown-preview.nvim", 
        run = function() 
        vim.fn["mkdp#util#install"]()
    end,})
    use({"iamcco/markdown-preview.nvim", 
        run = "cd app && npm install", 
        setup = function() 
        vim.g.mkdp_filetypes = { "markdown" } end, 
        ft = { "markdown" }, 
    })



    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
            require("packer").sync()
    end
end)