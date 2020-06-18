" basic
set fenc=utf-8
set autoread
set hidden
set showcmd
set fileformat=unix

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

" clipboard
set clipboard&
set clipboard^=unnamedplus

" buffer
nnoremap <silent> <C-j> :bnext<CR>
nnoremap <silent> <C-k> :bprev<CR>

" register
vnoremap x "_x
vnoremap X "_X
vnoremap s "_s
vnoremap S "_S





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
Plugin 'rust-lang/rust.vim'
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

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_sizestyle='H'
let g:netrw_timefmt='%Y/%m/%d(%a) %H:%M:%S'
let g:netrw_fastbrowse=0
autocmd FileType netrw setl bufhidden=wipe

let g:tsuquyomi_disable_default_mappings = 1
autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
autocmd FileType typescript nmap <buffer> ,t : <C-u>echo tsuquyomi#hint()<CR>
nmap <buffer> <Space><C-]> <Plug>(TsuquyomiReferences)

call submode#enter_with('bufmove', 'n', '', '<C-w>>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', '<C-w><', '<C-w><')
call submode#enter_with('bufmove', 'n', '', '<C-w>-', '<C-w>-')
call submode#enter_with('bufmove', 'n', '', '<C-w>+', '<C-w>+')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
