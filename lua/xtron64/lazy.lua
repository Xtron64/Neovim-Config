local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"folke/which-key.nvim"
	},
	{
		"folke/neoconf.nvim", cmd = "Neoconf"
	},
	{
		"folke/neodev.nvim"
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = {
			'nvim-lua/plenary.nvim'
		}
	},
	{
		"folke/trouble.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function () 
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			sync_install = false,
			highlight = {
				enable = true
			},
			indent = {
				enable = true
			},  
		})
		end
	},
	{
		"tpope/vim-fugitive"
	},
	{
		'williamboman/mason.nvim'
	},
	{
		'williamboman/mason-lspconfig.nvim'
	},
	{
		'VonHeikemen/lsp-zero.nvim'
	},
	{
		'neovim/nvim-lspconfig'
	},
	{
		'hrsh7th/cmp-nvim-lsp'
	},
	{
		'hrsh7th/nvim-cmp'
	},
	{
		'L3MON4D3/LuaSnip'
	},
	{
		'saadparwaiz1/cmp_luasnip'
	},
	{
		"folke/zen-mode.nvim",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},
	{
		"startup-nvim/startup.nvim",
		config = function()
			require("startup").setup({
				theme = "evil",
				options = {
					mapping_keys = true, -- display mapping (e.g. <leader>ff)
				},
				mappings = {
					execute_command = "<CR>",
					open_file = "<CR>",
					open_file_split = "os",
					open_section = "<CR>",
					open_help = "?",
				},
			})
		end
	},
})
