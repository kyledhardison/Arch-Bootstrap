
return require('packer').startup(function()
    -- Packer manages itself
    use 'wbthomason/packer.nvim'

    -- Additional package manager
    use 'williamboman/mason.nvim'    
    use 'williamboman/mason-lspconfig.nvim'

    -- LSP & Rust setup
    use 'neovim/nvim-lspconfig' 
    use 'simrat39/rust-tools.nvim'

    -- Additional plugins
    use 'airblade/vim-gitgutter'
    use 'https://github.com/preservim/nerdtree.git'
    use 'https://github.com/kien/ctrlp.vim.git'
    use 'vimwiki/vimwiki'
end)
