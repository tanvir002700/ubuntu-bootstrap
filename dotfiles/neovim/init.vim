

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = "c,html,javascript,python,ruby"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim

let mapleader=","
let g:mapleader=","

call system('true')

source ~/.config/nvim/plugins.vim

syntax enable
set background=dark
colorscheme solarized8
hi Normal guibg=NONE ctermbg=NONE


set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number
set autoread            " Detect when a file changed
set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set cursorline

set expandtab           " insert spaces for <Tab>
set smartindent
set smarttab            " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4           " the visible width of tabs
set softtabstop=4       " edit as if the tabs are 4 characters wide
set shiftwidth=4        " number of spaces to use for indent and unindent
set shiftround          " round indent to a multiple of 'shiftwidth'
set completeopt+=longest
set linespace=15
set textwidth=120
set showbreak=↪
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮

augroup configgroup
	autocmd!
	autocmd FileType xml setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType gradle.build setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab smartindent smarttab
	autocmd FileType python setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab
augroup END


"------------ Mappnigs ------------"

"NERDTree Config
map <F6> :NERDTreeToggle<CR>
map <F5> :NERDTreeFind<CR>

source ~/.config/nvim/airline.vim
source ~/.config/nvim/syntastic.vim
source ~/.config/nvim/jedi.vim
source ~/.config/nvim/ruby.vim



nmap <silent> <leader>e :bnext<cr>          " switch to nex buffer
nmap <silent> <leader>w :bprevious<cr>      " switch to previous bufferjkj

set mouse=a mousemodel=popup

