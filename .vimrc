set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'sheerun/vim-polyglot'
    Plugin 'wting/rust.vim'
    Plugin 'nono/jquery.vim'
    Plugin 'lepture/vim-css'
    Plugin 'StanAngeloff/php.vim'
    Plugin 'octol/vim-cpp-enhanced-highlight'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'scrooloose/syntastic'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'majutsushi/tagbar'
    Plugin 'kien/ctrlp.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-haml'
    Plugin 'pangloss/vim-javascript'
    Plugin 'bronson/vim-trailing-whitespace'
    Plugin 'Townk/vim-autoclose'
    Plugin 'jeffkreeftmeijer/vim-numbertoggle'
    Plugin 'Shougo/vimshell.vim'
    Plugin 'klen/python-mode'

    Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()

    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:NumberToggleTrigger="<F10>"

    let g:tagbar_type_make = {
        \ 'kinds': [
            \ 'm:macros',
    	    \ 't:targets'
        \ ]
    \ }



    map <C-n> :NERDTreeToggle<CR>
    map <F8> :TagbarToggle<CR>
    map <F9> :FixWhitespace<CR>
    map <F11> gg=G<CR>
    map <F7> :lopen<CR>
    map <F6> :lclose<CR>

    nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>

    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    autocmd vimenter * NERDTree

    set hidden
    set wildmenu
    set backspace=indent,eol,start
    set autoindent
    set shiftwidth=4
    set softtabstop=4
    set expandtab

    set relativenumber
    set number

    set guifont=Hack:h12
