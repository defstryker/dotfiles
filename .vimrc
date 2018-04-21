execute pathogen#infect()

" enable powerline fonts support
let g:airline_powerline_fonts = 1

" set vim-arline theme
let g:airline_theme='luna'
" let g:airline_time='nord'

" vim syntax theme and enabling 256 colors
let base16colorspace = 256
colorscheme base16-monokai
" colorscheme nord

" enable status line for all windows
set laststatus=2

" standard configs
syntax on
filetype plugin indent on

" set column 80 color
set colorcolumn=80

" set line numbers
set number

" tab settings
set tabstop=4
set expandtab
set shiftwidth=4

" syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Hit F5 to show a list of buffers and switch
" between buffers
nnoremap <F5> :buffers<CR>:buffer<Space>
