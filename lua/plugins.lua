require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/completion-nvim'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'SirVer/ultisnips'
	use 'honza/vim-snippets'
	use 'lifepillar/vim-gruvbox8'
	use 'NLKNguyen/papercolor-theme'
	use 'sheerun/vim-polyglot'
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'
	use 'junegunn/fzf.vim'
	use 'junegunn/fzf'
end)

vim.o.completeopt = "menuone,noselect"
vim.g.completion_enable_snippet = 'UltiSnips'

require'lspconfig'.elixirls.setup{
	cmd = { "/Users/lebronse/source/elixir/elixir-ls/language_server.sh" };
	on_attach = require'completion'.on_attach;
}

require'nvim-treesitter.configs'.setup {
	ensure_install = "maintained",
	highlight = {
		enable = true,
		additional_vim_regex_highlights = false
	},
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)

