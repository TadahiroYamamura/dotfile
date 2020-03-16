" basic
set fenc=utf-8
set autoread
set hidden
set showcmd

" backup
set nobackup
set noswapfile
set nowritebackup

" visual
set number
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
syntax enable
set ballooneval

" cursor
set cursorline
set cursorcolumn
set virtualedit=onemore
nnoremap j gj
nnoremap k gk

" indent
set smartindent
set autoindent
set list listchars=tab:\▸\-,eol:↲
set expandtab
set tabstop=2
set shiftwidth=2

" search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" buffer
nnoremap <silent> <C-j> :bnext<CR>
nnoremap <silent> <C-k> :bprev<CR>





" plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'quramy/tsuquyomi'
Plugin 'kana/vim-submode'
Plugin 'previm/previm'
Plugin 'tyru/open-browser.vim'
call vundle#end()
filetype plugin indent on

" Plugin init
syntax on
colorscheme molokai
set t_Co=256

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:openbrowser_browser_commands = [ {'name': 'google-chrome-stable',  'args': ['{browser}', '{uri}']} ]

let g:previm_open_cmd = '/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'
let g:previm_wsl_mode = 1

let g:vim_markdown_initial_foldlevel=1

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_sizestyle='H'
let g:netrw_timefmt='%Y/%m/%d(%a) %H:%M:%S'

autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
autocmd FileType typescript nmap <buffer> ,t : <C-u>echo tsuquyomi#hint()<CR>

call submode#enter_with('bufmove', 'n', '', '<C-w>>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', '<C-w><', '<C-w><')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
