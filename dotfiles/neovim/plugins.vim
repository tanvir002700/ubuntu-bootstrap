call plug#begin('~/.config/nvim/plugged')
	Plug 'tpope/vim-vinegar'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'dracula/vim'
	Plug 'lifepillar/vim-solarized8'
	Plug 'bling/vim-bufferline'             " bufferline
	Plug 'tpope/vim-endwise'
	Plug 'ervandew/supertab'
	Plug 'vim-syntastic/syntastic'
	Plug 'sheerun/vim-polyglot'
	Plug 'rking/ag.vim'
	Plug 'skwp/greplace.vim'
	Plug 'ervandew/supertab'

	Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
	Plug 'Xuyuanp/nerdtree-git-plugin'

	Plug 'airblade/vim-gitgutter'			" check git diff
	Plug 'ntpeters/vim-better-whitespace'   " check trailling white space error
	Plug 'Raimondi/delimitMate'             " automatic closing of quotes, parenthesis, brackets, etc.
	Plug 'honza/vim-snippets'

    Plug 'bagrat/vim-workspace'

	" c
	Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
	Plug 'ludwig/split-manpage.vim'

	" rails
	Plug 'tpope/vim-rails'
	Plug 'tpope/vim-rake'
	Plug 'tpope/vim-projectionist'
	Plug 'thoughtbot/vim-rspec'
	Plug 'ecomba/vim-ruby-refactoring'

	" html
	"" HTML Bundle
	Plug 'hail2u/vim-css3-syntax'
	Plug 'gorodinskiy/vim-coloresque'
	Plug 'tpope/vim-haml'
	Plug 'mattn/emmet-vim'
    Plug 'sukima/xmledit'

	" javascript
	"" Javascript Bundle
	Plug 'jelera/vim-javascript-syntax'


	" python
	"" Python Bundle
    Plug 'Valloric/YouCompleteMe'


call plug#end()
