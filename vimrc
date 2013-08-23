runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

set shiftwidth=4
set tabstop=4
set expandtab

set nobackup
set noswapfile
set shortmess=aI

set makeprg=[[\ -f\ Makefile\ ]]\ &&\ make\ \\\|\\\|\ make\ -C\ ..

nnoremap <C-w>N :vsplit<CR>

if has("gui_running")
    if has("win32")
        set guifont=Source\ Code\ Pro:h12
        au GUIEnter * simalt ~x
    else
        set guifont=Source\ Code\ Pro\ 12
        set lines=45 columns=175
    endif
    set guioptions=e
else
    let g:solarized_termcolors=256
endif

colorscheme solarized
set background=dark
