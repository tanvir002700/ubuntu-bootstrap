call plug#begin('~/.config/nvim/plugged')
	Plug 'tpope/vim-vinegar'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'dracula/vim'
	Plug 'lifepillar/vim-solarized8'
	Plug 'davidhalter/jedi-vim'				" auto complete
	Plug 'bling/vim-bufferline'             " bufferline
	Plug 'tpope/vim-endwise'
	Plug 'ervandew/supertab'
	Plug 'vim-syntastic/syntastic'
	Plug 'sheerun/vim-polyglot'

	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	
	Plug 'airblade/vim-gitgutter'			" check git diff
	Plug 'ntpeters/vim-better-whitespace'   " check trailling white space error
	Plug 'Raimondi/delimitMate'             " automatic closing of quotes, parenthesis, brackets, etc.
	Plug 'honza/vim-snippets'


	" c
	Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
	Plug 'ludwig/split-manpage.vim'

	" rails
	Plug 'tpope/vim-rails'
	Plug 'tpope/vim-rake'
	Plug 'tpope/vim-projectionist'
	Plug 'thoughtbot/vim-rspec'
	Plug 'ecomba/vim-ruby-refactoring'
call plug#end()
