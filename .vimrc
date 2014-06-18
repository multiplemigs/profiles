autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xhtml set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType {xml,xsl,xslt} setlocal iskeyword=@,-,\:,48-57,_,128-167,224-235
autocmd FileType {xsl,xslt} XMLns xhtml10s
autocmd FileType {xsl,xslt} XMLns xsl xsl

set noexpandtab
set tabstop=2
set shiftwidth=2
set showmatch
set ignorecase
set smartcase
set hlsearch
set showcmd
set cmdheight=2
set laststatus=2
set statusline=%F%m%r%h%w\ %y\ %=[Bfr=%n]\ [%l,%v]\ [%p%%]\
set smarttab
set smartindent
syntax on
set background=dark
set title
set number

hi LineNr       guifg=lightgray         guibg=black     gui=none
hi LineNr       ctermfg=lightgray       ctermbg=black   cterm=none

noremap <Leader>p :set paste!<CR>:r ! pbpaste<CR>:set paste!<CR>
" \f in insert mode will make a function and put you in the params area

function! JavascriptFiletypeSettings()
	imap \f function () {<CR>}<ESC>%?(<CR>a
	imap \c console.log();<ESC>F)i
	imap \r return;<ESC>i
	imap \n null
	imap \p prototype
	imap \v var ;<ESC>i
	imap \t true
	imap \= ===
	imap \i if () {<CR>}<ESC>?(<CR>a
	imap \h this
	imap \e new
endfunction

function! PythonFiletypeSettings()
	set tabstop=4
	set shiftwidth=4
	set softtabstop=4
	set expandtab
	set autoindent
	set smarttab
endfunction

autocmd FileType javascript call JavascriptFiletypeSettings()
autocmd FileType python call PythonFiletypeSettings()
set nocompatible
filetype plugin indent on
set path=$PWD/**

set cm=blowfish

highlight ColorColumn ctermbg=magenta
call matchadd('Colorcolumn', '\%81v', 100)

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

set title 
set titleold=""
set titlestring=VIM:\ %F
