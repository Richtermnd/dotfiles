local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "aktersnurra/no-clown-fiesta.nvim", opts = { transparent = true } },
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-surround" },
	{ "ibhagwan/fzf-lua" },
	{
		'stevearc/oil.nvim',
		dependencies = { { "nvim-tree/nvim-web-devicons"} },
		opts = {
			default_file_explorer = true,
			columns = { "permissions", "size", "mtime", "icon", },
			keymaps = {
				["L"] = {"actions.select"},
				["H"] = {"actions.parent"},
				["<C-h>"] = {"<cmd>TmuxNavigateLeft<Enter>"},
				["<C-l>"] = {"<cmd>TmuxNavigateRight<Enter>"},
			}
		}
	},

	{
		'echasnovski/mini.nvim',
		version = false,
		config = function()
			require("mini.icons").setup()
			require("mini.move").setup()
			require("mini.pairs").setup()
		end
	},

	{
		"L3MON4D3/LuaSnip",
		version = "v2.3",
		build = "make install_jsregexp",
		config = function ()
			local ls = require("luasnip")
			local s = ls.snippet
			local t = ls.text_node
			local i = ls.insert_node

			ls.add_snippets("go", {
				s("fe", {
					t("fmt.Errorf(\"%s: %w\", op, err)")
				}),
				s("rfe", {
					t("return "), i(1), t(", fmt.Errorf(\"%s: %w\", op, err)")
				}),
				s("iferr", {
					t("if err != nil {"),
					t({ "", "    return " }), i(1),
					t({ "", "}" })
				}),
				s("unimplemeted", { t("panic(\"not implemented\")")}),
				s("todo", { t("panic(\"todo: "), i(1), t("\")") })
			})

			vim.keymap.set({"i", "s"}, "<C-n>", function()
				if ls.choice_active() then
					ls.change_choice(1)
				end
			end, {silent = true})
		end
	},

	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<m-b>h", "<cmd>TmuxNavigateLeft<cr>" },
			{ "<m-b>j", "<cmd>TmuxNavigateDown<cr>" },
			{ "<m-b>k", "<cmd>TmuxNavigateUp<cr>" },
			{ "<m-b>l", "<cmd>TmuxNavigateRight<cr>" },
			{ "<m-b><c-h>", "<cmd>TmuxNavigateLeft<cr>" },
			{ "<m-b><c-j>", "<cmd>TmuxNavigateDown<cr>" },
			{ "<m-b><c-k>", "<cmd>TmuxNavigateUp<cr>" },
			{ "<m-b><c-l>", "<cmd>TmuxNavigateRight<cr>" },
			{ "<c-\\>", false },
		},
	},
	{
		'saghen/blink.cmp',
		version = '1.*',
		opts = {
			keymap = {
				preset = 'default',
				["<C-n>"] = {
					function (cmp)
						if not cmp.is_visible() then
							print('xdd')
						else
							return false
						end
					end,
					'select_next',
				}
			},
			completion = {
				menu = { auto_show = false },
				list = {
					selection = { preselect = true, auto_insert = true, },
				},
				ghost_text = { enabled = true,  show_with_menu = false, },
			},
			snippets = { preset = 'luasnip' },
			sources = {
				default = { 'lsp', 'buffer', 'snippets', 'path' },
				providers = { buffer = { opts = { get_bufnrs = vim.api.nvim_list_bufs } } },  -- xdd
			},
			fuzzy = { implementation = "lua" },
		},
	},
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		opts = {
			highlight = { enable = true, },
			indent = { enable = true },
			sync_install = false,
			auto_install = false,
			modules = {},
			ignore_install = {},
			ensure_installed = {
				"go", "gomod", "gotmpl", "gowork",
				"python",
				"c_sharp",
				"javascript", "html", "css",
				"sql",
				"yaml", "json", "dockerfile", "gitignore", "markdown",
				"bash", "vim", "vimdoc", "lua", "c",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<m-space>",
					node_incremental = "<m-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			injections = {
				enable = true,
			}
		}
	},
})

