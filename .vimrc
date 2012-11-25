call pathogen#infect()
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

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
