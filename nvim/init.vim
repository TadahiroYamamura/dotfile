" basic
set fenc=utf-8
set autoread
set hidden
set showcmd
set fileformat=unix
set modifiable

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

" terminal
tnoremap <Esc><Esc> <C-\><C-n>

" config related directories
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:config_home = empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME

" python
let s:python3_exe = system('which python')
let g:python3_host_prog = s:python3_exe

" dein
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir . ',' . &runtimepath
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#add(s:dein_repo_dir)
  call dein#load_toml(s:config_home . '/nvim/dein.toml',           {'lazy': 0})
  call dein#load_toml(s:config_home . '/nvim/language.toml',       {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on

" netrw
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_sizestyle='H'
let g:netrw_timefmt='%Y/%m/%d(%a) %H:%M:%S'
let g:netrw_fastbrowse=2
let g:netrw_browse_split=0
augroup netrw_init
  autocmd!
  autocmd FileType netrw setl bufhidden=wipe
augroup END

" task runner
command! -nargs=+ Makers !makers <args>
command! -nargs=+ Yarn !yarn <args>
