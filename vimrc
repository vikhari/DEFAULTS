" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent


" Turn backup off, since most stuff is in SVN, git etc.
set nobackup
set nowb
set noswapfile

" Enable syntax highlighting
syntax enable

colorscheme desert
set background=dark

" No annoying sound on errors
set noerrorbells
set novisualbell

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

"Always show current position
set ruler

"Line numbers
set number

"Turn on mouse support
set mouse=a

imap jj <ESC>
