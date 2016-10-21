" pathogen
execute pathogen#infect()

if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif

" Cursor block in cmd mode and line in insert mode
let &t_SI="\<Esc>]50;CursorShape=1\x7"
let &t_EI="\<Esc>]50;CursorShape=0\x7"
" let &t_ti="\<Esc>]50;CursorShape=2\x7"

" reset pager for man pages
let $PAGER=''

" underline current Line
set cursorline
set cursorcolumn

" f5 paste toggle for insert mode
set pastetoggle=<F5>
" NERDTree show hidden files
let NERDTreeShowHidden=1

" Command-T keymap
map <c-t> :CommandT<CR>

" NERDTreeToggle keymap
map <c-\> :NERDTreeToggle<CR>
vnoremap <C-C> "*ygv
vnoremap <C-V> "*p
inoremap <C-V> <C-R>*
inoremap <C-S> <esc>:w<cr>
nnoremap <C-S> :w<cr>
vnoremap <C-S> :w<cr>
" nnoremap <C-C> "+y
" nnoremap <C-C> "+yl 
" nnoremap <C-V> "+P

" line number config
set nu
" the below cmd is in the .vimrc. not sure why it wont work here
" hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

hi CursorColumn guibg=#ffffff

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
