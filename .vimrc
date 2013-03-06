call pathogen#infect('~/.vim/bundle')
call pathogen#helptags()
filetype plugin indent on
set nocp
set title
set hidden
syntax on
set showmatch
set hls
"set ts=2 sw=2
set expandtab
set shiftwidth=2
set softtabstop=2
set t_Co=256

set background=dark
colorscheme candy
set number
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
"autocmd BufRead *\.txt setlocal formatoptions=l
"autocmd BufRead *\.txt setlocal lbr
"autocmd BufRead *\.txt map  j gj
"autocmd BufRead *\.txt  map  k gk
"autocmd BufRead *\.txt setlocal smartindent
"autocmd BufRead *\.txt setlocal spell spelllang=en_us
"
""ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et

nmap <silent> <Leader>rcrr :call RunRubyCurrentFileConque()<CR>
nmap <silent> <Leader>rcss :call RunRspecCurrentFileConque()<CR>
nmap <silent> <Leader>rcll :call RunRspecCurrentLineConque()<CR>
nmap <silent> <Leader>rccc :call RunCucumberCurrentFileConque()<CR>
nmap <silent> <Leader>rccl :call RunCucumberCurrentLineConque()<CR>
nmap <silent> <Leader>rcRR :call RunRakeConque()<CR>
nmap <silent> <Leader>rcrl :call RunLastConqueCommand()<CR>

nnoremap <silent> <C-s> :call RelatedSpecVOpen()<CR>
nnoremap <silent> ,<C-s> :call RelatedSpecOpen()<CR>

autocmd FileType make set noexpandtab
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

"vim fugitive
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

" for note taking 
let g:notes_suffix = '.bds'
let g:notes_directory = '~/Dropbox/docs/notes'


