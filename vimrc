runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

set shiftwidth=4
set tabstop=4
set expandtab

nnoremap <C-w>N :vsplit<CR>

if has("gui_running")
    set guifont=Source\ Code\ Pro:h12
    set guioptions=e
    au GUIEnter * simalt ~x
else
    let g:solarized_termcolors=256
endif

set background=dark
colorscheme solarized
