" Current line highlight
set cursorline
"hi CursorLine term=bold cterm=bold guibg=Grey40

" Start searching when you type the first character
set incsearch
" Search highlight
set hlsearch

" Syntax highlight
syntax enable

" 4 spaces for indenting
set shiftwidth=4

" 4 stops
set tabstop=4

" Spaces instead of tabs
"set expandtab

" Always  set auto indenting on
set autoindent

" select when using the mouse
set selectmode=mouse

" Line Numbers
set nu

" Paste mode
set paste

" http://stackoverflow.com/questions/526858/how-do-i-make-vim-do-normal-bash-like-tab-completion-for-file-names
set wildmode=longest,list,full
set wildmenu

" Mouse scroll/select
set mouse=a

" BN
"au BufNewFile,BufRead bconf.txt.* set filetype=cfg
"au BufNewFile,BufRead *.tmpl set filetype=html
au BufNewFile,BufRead *.pgsql set filetype=sql

" Opens search results in a window w/ links and highlight the matches
command! -nargs=+ Grep execute 'silent grep! -I -r -n --exclude *.{json,pyc} . -e <args>' | copen | execute 'silent /<args>'
" shift-control-* Greps for the word under the cursor
:nmap <leader>g :Grep <c-r>=expand("<cword>")<cr><cr>

" Wrap Git commit messages at 72 characters 
autocmd Filetype gitcommit spell textwidth=72

