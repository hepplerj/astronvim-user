return {
	plugins = {
		-- Copilot
		{
		"github/copilot.vim",
		lazy = false,
		auto = true,
		},

		-- Trouble
		{
			"folke/trouble.nvim",
			requires = "nvim-tree/nvim-web-devicons",
			config = function()
				require("trouble").setup ()
			end
		},

		-- Nordic theme
		{
			'AlexvZyl/nordic.nvim',
			lazy = false,
			priority = 1000,
			config = function()
				require 'nordic' .load()
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

		-- Wordy
		{
			'preservim/vim-wordy',
			lazy = false,
			auto = true
		}
	},
}
