vim.cmd([[packadd packer.nvim]])

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use("tpope/vim-surround")
	use("tpope/vim-repeat")
	use("mechatroner/rainbow_csv")
	use("junegunn/goyo.vim")
	use("andymass/vim-matchup")
	use("unblevable/quick-scope")
	use("iamcco/markdown-preview.nvim")
	use("dhruvasagar/vim-table-mode")

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
		tag = "0.1.0",
		config = function()
			require("pluginconfig/telescope")
		end,
	})
	use({
		"folke/which-key.nvim",
		config = function()
			require("pluginconfig/which-key")
		end,
	})

	use({
		"neovim/nvim-lspconfig",
		config = function()
			require("pluginconfig/nvim-lspconfig")
		end,
	})
	use({
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	})
	use({
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("pluginconfig/mason-lsconfig")
		end,
	})

	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("pluginconfig/null-ls")
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("pluginconfig/nvim-treesitter")
		end,
	})

	use({
		"hrsh7th/nvim-cmp",
		config = function()
			require("pluginconfig/nvim-cmp")
		end,
	})
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/vim-vsnip")
end)
