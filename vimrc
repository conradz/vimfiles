runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

set shiftwidth=4
set tabstop=4
set expandtab

set nobackup
set noswapfile
set shortmess=aI

nnoremap <C-w>N :vsplit<CR><C-w>l

set background=light
colorscheme solarized

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
    let g:solarized_termtrans=1
    " if !has("win32")
    "     let g:solarized_termcolors=256
    " endif
endif

set vb t_vb=
set fillchars=
highlight Normal ctermbg=NONE
highlight StatusLine ctermbg=black ctermfg=white
highlight StatusLineNC ctermbg=blue ctermfg=white
highlight VertSplit ctermbg=white ctermfg=white

au BufNewFile,BufRead *.hbs set filetype=html
