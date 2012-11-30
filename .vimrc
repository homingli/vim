" This must be first, because it changes other options as side effect
"set nocompatible

call pathogen#infect()
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let g:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
nmap <F2> :TagbarToggle<CR>
nmap <F1> :NERDTreeToggle<CR>

inoremap jj <Esc>

set showcmd
set number
set smartcase


" Folding Stuffs
set foldmethod=marker
" Space will toggle folds!
nnoremap <space> za

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

"set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" for supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<C-x><C-n>"
let g:SuperTabClosePreviewOnPopupClose = 1
set completeopt=longest,menuone,preview
