call pathogen#infect('~/.vim/bundle')
call pathogen#helptags()
filetype plugin indent on
set nocp
set title
set hidden
set showmatch
set hls
"set ts=2 sw=2
set expandtab
set shiftwidth=2
set softtabstop=2
set t_Co=256

" set autcomplete menu background color
highlight Pmenu ctermbg=230 gui=bold
highlight StatusLine ctermfg=blue ctermbg=yellow

syntax on
set background=dark
colorscheme candy

"let g:snippets_dir = "~/.vim/bundle/snipmate-snippets/snippets"
set number

" python
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Text files
autocmd BufRead *\.txt setlocal formatoptions=l
autocmd BufRead *\.txt setlocal lbr
autocmd BufRead *\.txt map  j gj
autocmd BufRead *\.txt map  k gk
autocmd BufRead *\.txt setlocal smartindent
autocmd BufRead *\.txt setlocal spell spelllang=en_us

" html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


" ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et

autocmd FileType make set noexpandtab

" convienience keys
map <Leader>b :ConqueTermSplit bash<CR>
map <Leader>a ggVG=2<C-o>
"nmap ,f :FufFileWithCurrentBufferDir<CR>
"nmap ,b :FufBuffer<CR>
"nmap ,t :FufTaggedFile<CR>

" vim fugitive
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

" for note taking 
let g:notes_suffix = '.bds'
let g:notes_directory = '~/Dropbox/docs/notes'

" xmpfilter Terminal
nmap <buffer> <F5> <Plug>(xmpfilter-run)
xmap <buffer> <F5> <Plug>(xmpfilter-run)
imap <buffer> <F5> <Plug>(xmpfilter-run)

nmap <buffer> <F4> <Plug>(xmpfilter-mark)
xmap <buffer> <F4> <Plug>(xmpfilter-mark)
imap <buffer> <F4> <Plug>(xmpfilter-mark)


