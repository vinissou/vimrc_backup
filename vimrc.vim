
"------------------------
"     CONFIGURATION
"------------------------

"Basic

"Turn off audio and visual bells on gVim
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"Put everything in english, or at least try
set langmenu=en_US.UTF-8 
let $LANG = 'en_US.UTF-8'
language message en_US.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

colorscheme desert
scriptencoding utf-8
syntax on

"Undo file
set directory=~/.tmp/
set undofile
let &undodir=&directory

"Varied set configurations
set ai
set backspace=2
set backspace=indent,eol,start
set complete+=kspell
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set hlsearch
set ignorecase    
set incsearch
set mouse=a
set nobackup
set nocompatible
set nohidden
set noswapfile
set nowritebackup
set nowritebackup
set ruler 
set shiftwidth=4
set showcmd  
set smartcase
set smartindent
set splitbelow
set splitright
set tabstop=4
set textwidth=80
set wildmenu
set wildmode=list:longest,full


"------------------------
"   SHORTCUTS SECTION
"------------------------

"Moving words and spaces
noremap <leader>o o
noremap <leader>0 O
noremap <leader><Space> i 
noremap <leader> i

noremap .j :'<,'>!fmt -w 80

noremap > >>
noremap < <<

noremap <leader>= :m+
noremap <leader>- :m--


"Copy and paste options
noremap <leader>y "+yy
vnoremap <leader>y "+yy
nnoremap <leader>p "+p

noremap <leader>a GVgg


"Cursor movement 
noremap = +
noremap + 6+
noremap _ 6-

noremap { gg
noremap } G
noremap [ {
noremap ] }

noremap W 5w
noremap E 5e
noremap B 5b

noremap <leader>j <c-w>j
noremap <leader>k <c-w>k
noremap <leader>l <c-w>l
noremap <leader>h <c-w>h

nnoremap ,a A
nnoremap ,i I



"Vim functions
nnoremap ; :
nnoremap <leader>m :e! $MYVIMRC<cr>
nnoremap .\ .
nnoremap . :

nnoremap .qq :bd!<cr>
nnoremap <leader>]  :bn<cr>
nnoremap <leader>[  :bp<cr>

nnoremap <leader>1 @k
nnoremap <leader>2 <c-w>=
nnoremap <leader>3 <c-w>_

nnoremap <leader>se :setlocal spell spelllang=en_us
nnoremap <leader>sb :setlocal spell spelllang=pt_br
nnoremap <leader>sn :set nospell

nnoremap <leader>* *<C-O>:%s///gn<CR>
nnoremap <leader>/ :%s/ins//gn

nnoremap ' :ec 

"Programming comments
nnoremap <leader>' I"A"
nnoremap <leader>" IxAx

noremap .' I/* A*/
noremap ." IxxxAxx>
nnoremap .i I/*
nnoremap .f A*/
nnoremap .l I* <<<
nnoremap .h O/************************************************************ Name:** Function: ** Observations: ** Used functions and variables from other files:************************************************************/
nnoremap .m o* Creator: Vinícius Souza* Email: vinissou.git@gmail.com* Site: https://github.com/vinissou


"Backups
if has("win32")
    nnoremap <leader>bc :! C:\C\SCRIPTS\backupWIN.bat<cr>
    let @b='\m:w! C:\Users\vini\Documents\backups\vim\STABLE_VIMRC.vim|:! C:\C\SCRIPTS\VIMbackup.bat'
    let @g=':! C:\C\SCRIPTS\GIT_PULL_vimrc.bat|\m\ad:r C:\Users\vini\Source\Repos\vimrc_backup\vimrc.vim'
else
    nnoremap <leader>bc :!bash /home/vini/C/SCRIPTS/backup.sh<cr>
    let @b='\m:w! /home/vini/backups/VIM/STABLE_VIMRC.vim|:!sh /home/vini/C/SCRIPTS/VIMbackup.sh'
    let @g=':!sh /home/vini/C/SCRIPTS/GIT_PULL_vimrc.sh|\m\ad:r /home/vini/GIT/vimrc_backup/vimrc.vim'
endif

"Compilers
"nnoremap .c :<C-U>!clang -o3 -Wall -pedantic -std=c99 %:r.c -o ~/a.out<CR>
nnoremap .c :<C-U>!clang -o3 -Wall -pedantic -std=c99 % -o ~/a.out<CR>
nnoremap .gc :<C-U>!gcc  -o3 -Wall -pedantic -std=c99 % -o ~/a.out<CR>
nnoremap .va :<C-U>!valgrind ~/a.out<CR>
nnoremap .a :<C-U>!~/a.out<CR>


"MACROS (don't use numbers)
let @c='i#include <stdio.h>int main(){return(0);}'
let @i='GVgg<G'
let @k='|'


"Deactivated because they annoyed me
nnoremap ., çç  
nnoremap .. çç  
nnoremap .e çç  
nnoremap .x çç  
nnoremap .v çç  
nnoremap .b çç  
nnoremap .z çç  
nnoremap s çç  
vnoremap s çç  
nnoremap , çç
nnoremap Q çç


"---------------------------
"  COMMAND CODE REFERENCES 
"---------------------------
"Esc = 
"Enter = 


"------------------------
"       TEMPORARY 
"------------------------
"\

"------------------------
"         TIPS
"------------------------
"Press g CTRL-G in normal mode to display some statistics on the cursor and the file.
"On Unix-based systems, enter the following in Vim to read the output from running the date utility, inserting the result after the current line:
":r !date
"Under Windows, use:
":r !date /t
"Use the :read command to insert a file, or the output from a system command, into the current buffer
"FORMAT
":set ff=unix
":set ff=dos
"set ignorecase or set ic To re-enable case sensitivity, use :set ic!
"------------------------
