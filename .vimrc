set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'zeis/vim-kolor'
Plugin 'tpope/vim-markdown'
Plugin 'Lokaltog/vim-distinguished'
" Bundle 'Valloric/YouCompleteMe'
call vundle#end()

filetype plugin indent on

" turn off auto backing up - using google drive or git anyway right? :)
set nobackup
set noswapfile
set nowb

" buffers can exist in background
set hidden

" allow spell check
"set spell
"set spelllang=en

" line numbers
set nu

" turn off word wrapping
set nowrap

" show line and column markers
"set cursorline
"set cursorcolumn

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Line Numbers
set number

" Enable syntax highlighting
syntax enable

" Who doesn't like autoindent?
set autoindent

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" tabbing
set smarttab
set shiftwidth=4
set tabstop=4
" Use spaces instead of tabs
set expandtab

" make ; act as : - faster command typing
:nmap ; :
" this way of doing it was in my old .vimrc no idea what difference it makes
" nnoremap ; :

" javascript omnicompletion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

" python stuff
autocmd FileType python nnoremap <buffer> <F9> :w !python<CR>
 
" markdown stuff
"autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" tabbing
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" color scheme for conemu (256 colors)
set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
"colorscheme zenburn
colorscheme distinguished
"colorscheme kolor

" key mappings
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

" commands
command ScribeStarStories cd D:\Work\Product\acceptance_tests\stories | !ctags -R .
command ScribeStarEditor cd D:\Work\Product\instance\ScribeStar.Web\Scripts\Editor | !ctags -R .
command ScribeStarSass cd D:\Work\Product\instance\ScribeStar.Web\sass
command ScribeStarRoot cd D:\Work\Product | !ctags -R .

