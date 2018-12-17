let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = "c,html,javascript,python,ruby"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim

let mapleader=","
let g:mapleader=","

call system('true')

source ~/.config/nvim/plugins.vim

syntax enable
colorscheme solarized8
set background=dark
hi Normal guibg=NONE ctermbg=NONE


set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number
set autoread            " Detect when a file changed
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set hlsearch            " Highlight search results.
set cursorline
set complete=.,w,b,u
set autowriteall
set clipboard=unnamedplus
"set hidden

set expandtab           " insert spaces for <Tab>
set smartindent
set smarttab            " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4           " the visible width of tabs
set softtabstop=4       " edit as if the tabs are 4 characters wide
set shiftwidth=4        " number of spaces to use for indent and unindent
set colorcolumn=80
set shiftround          " round indent to a multiple of 'shiftwidth'
set completeopt+=longest
set showbreak=↪
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮

augroup configgroup
	autocmd!
	autocmd FileType xml setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType gradle.build setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab smartindent smarttab
	autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab smartindent smarttab
	autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
	autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab
augroup END

"------------ Visual Settings -----"
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set linespace=15
set textwidth=80
hi LineNr ctermfg=white ctermbg=none


"------------ Split Management ----"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"------------ Mappnigs ------------"

"NERDTree Config
map <F6> :NERDTreeToggle<CR>
map <F5> :NERDTreeFind<CR>
let NERDTreeHijackNetrw = 0
let g:NERDTreeWinSize=20

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"nmap <c-e> :CtrlPBufTag<cr>
nmap <c-e> :CtrlPMRUFiles<cr>
nmap <Leader>f :tag<space>

source ~/.config/nvim/neomake.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/devicons.vim
source ~/.config/nvim/jedi.vim
source ~/.config/nvim/deoplete.vim
source ~/.config/nvim/ruby.vim
source ~/.config/nvim/html.vim


nmap <Leader><Space> :nohlsearch<cr> 			" off highlight search
imap jk <esc>
nmap <silent> <leader>e :bnext<cr>          " switch to nex buffer
nmap <silent> <leader>w :bprev<cr>      " switch to previous bufferjkj

set mouse=a mousemodel=popup

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dataset'
let g:python_host_prog = '/home/tanvir/.pyenv/shims/python'

set notagrelative
set tags=.git/tags
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11
