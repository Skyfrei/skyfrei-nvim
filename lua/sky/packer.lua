-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
	use 'wbthomason/packer.nvim'
    
    -- File search plugin
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = {
            {'nvim-lua/plenary.nvim'} 
        }
    }
    -- Syntax and file highlights, treesitter lsp
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use ('nvim-treesitter/playground')
    

    -- Color scheme
	use {
		"rose-pine/neovim", 
		as = "rose-pine",
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	}

    -- Basically file navigation baby
    use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

	

end)
