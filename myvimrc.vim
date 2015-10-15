" pathogen
execute pathogen#infect()

" Cursor block in cmd mode and line in insert mode
let &t_SI="\<Esc>]50;CursorShape=1\x7"
let &t_EI="\<Esc>]50;CursorShape=0\x7"

" reset pager for man pages
let $PAGER=''

" underline current Line
set cursorline

" NERDTreeToggle keymap
map <c-\> :NERDTreeToggle<CR>
