
return require('packer').startup(function()
    -- Packer manages itself
    use 'wbthomason/packer.nvim'

    -- Additional package manager
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- LSP & Rust setup
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'

    -- Completion framework:
    use 'hrsh7th/nvim-cmp'

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'
    use 'Mofiqul/dracula.nvim'

    -- Additional plugins
    use 'nvim-treesitter/nvim-treesitter'
    use 'airblade/vim-gitgutter'
    use 'https://github.com/preservim/nerdtree.git'
    use 'https://github.com/kien/ctrlp.vim.git'
    use 'vimwiki/vimwiki'
end)
