return {
	plugins = {
		-- Copilot
		{
		"github/copilot.vim",
		lazy = true,
		auto = true,
		config = function()
			require("copilot").load()
		end
		},

		-- Lazygit
		{
    "kdheepak/lazygit.nvim",
    config = function() 
    	require "lazygit".load()
    end
    },

		-- Trouble
		{
			"folke/trouble.nvim",
			requires = "nvim-tree/nvim-web-devicons",
			config = function()
				require("trouble").setup ()
			end
		},

		-- Themes:
		---- nordic
		{
			'AlexvZyl/nordic.nvim',
			lazy = false,
			priority = 1000,
			config = function()
				require 'nordic' .load()
			end
		},
		---- habamax
		{
			'habamax/vim-habamax',
			lazy = false,
			priority = 1000,
		},
		---- tokyonight
		{
			'folke/tokyonight.nvim',
			lazy = false,
			priority = 1000,
			config = function()
				require('tokyonight').setup {
					style = "night"
				}
			end,
		},
		---- catppuccin
		{ 
			'catppuccin/nvim', 
			priority = 1000, 
			config = function()
				require ('catppuccin').load()
			end
		},

		-- everforest theme
		{
			'neanias/everforest-nvim',
			lazy = false,
			priority = 1000,
			config = function()
				require 'everforest'.load()
			end
		},

		-- Treesitter
		{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		auto = true,
		config = function()
			require('nvim-treesitter.configs').setup {
				-- If TS highlights are not enabled at all, or disabled via `disable` prop,
				-- highlighting will fallback to default Vim syntax highlighting
				highlight = {
				  enable = true,
				  -- Required for spellcheck, some LaTex highlights and
				  -- code block highlights that do not have ts grammar
				  additional_vim_regex_highlighting = {'org'},
				},
				ensure_installed = {'org'}, -- Or run :TSUpdate org
			  }
		end,
		},

		-- Orgmode
		{
		"nvim-orgmode/orgmode",
		lazy = false,
		auto = true,
		config = function()
			require("orgmode").setup_ts_grammar()
			require("orgmode").setup {
				org_agenda_files = { "~/Dropbox/org/*" },
				org_default_notes_file = "~/Dropbox/org/refile.org",
			}
		end,
		},

		-- org-bullets
		{
			'akinsho/org-bullets.nvim',
			config = function()
  			require('org-bullets').setup()
			end
		},

		-- Oil
		{
			"stevearc/oil.nvim",
			opts = {},
			config = function()
				require("oil").setup()
			end,
		},

		-- Octo: for accessing Github
		{
			'pwntester/octo.nvim',
			lazy = false,
			auto = true,
			requires = {
				'nvim-lua/plenary.nvim',
				'nvim-telescope/telescope.nvim',
				'kyazdani42/nvim-web-devicons',
			},
			config = function ()
				require"octo".setup()
			end
		},

		-- Quarto
		{
			'quarto-dev/quarto-nvim',
			dev = false,
			lazy = false,
			auto = true,
			dependencies = {
			  { 'hrsh7th/nvim-cmp' },
			  {
				'jmbuhr/otter.nvim',
					dev = false,
			},
			},
			config = function()
			  require 'quarto'.setup {
				debug = false,
				closePreviewOnExit = true,
				lspFeatures = {
				  enabled = true,
				  languages = { 'r', 'python', 'julia', 'bash', 'lua' },
				  chunks = 'curly',
				  diagnostics = {
					enabled = true,
					triggers = { "BufWritePost" }
				  },
				  completion = {
					enabled = true,
				  },
				},
				keymap = {
				  hover = 'K',
				  definition = 'gd'
				},
			  }
			end
		  },

		-- Wordy
		{
			'preservim/vim-wordy',
			lazy = false,
			auto = true
		}
	},

	-- Color scheme must come after loading configs
	colorscheme = "catppuccin-mocha",
}
