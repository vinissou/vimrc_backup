"------------------------
"     CONFIGURATION
"------------------------

"Turn off audio and visual bells on gVim
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif


"Set everything in english, or at least try to
set fileformat=unix
set langmenu=en_US.UTF-8 
let $LANG = 'en_US.UTF-8'
language message en_US.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim


"Encoding and fonts
colorscheme desert
scriptencoding utf-8
syntax on
if has("win32") 
    set guifont=Lucida_Console:h11:cANSI:qDRAFT
endif


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
set textwidth=8000
set wildmenu
set wildmode=list:longest,full
set nrformats-=octal
set diffopt+=context:99999 "disable diff-fold


"------------------------
"   digraphs section
"------------------------
digraphs << 8592
digraphs >> 8594
digraphs AA 8593
digraphs VV 8595

inoremap <C-k6> <C-K>>> 
inoremap <C-k4> <C-K><< 
inoremap <C-k8> <C-K>AA 
inoremap <C-k2> <C-K>VV 


"------------------------
"   shortcuts section
"------------------------

"Moving words and spaces
noremap <leader>o o
noremap <leader>0 O
noremap <leader><Space> i 
noremap <leader> i

noremap > >>
noremap < <<

noremap <leader>= :m+
noremap <leader>- :m--


"Copy and paste options
noremap  <leader>y "+yy
noremap  <leader>p "+p
vnoremap <leader>y "+yy
vnoremap <leader>p "+p

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

nnoremap k i:
nnoremap ; :
nnoremap <leader>m :e! $MYVIMRC<cr>
nnoremap .\ .
nnoremap . :
nnoremap <leader>/ :%s/ins//gn
nnoremap ' :ec 
nnoremap .qq :bd!<cr>

nnoremap <leader>]  :bn<cr>
nnoremap <leader>[  :bp<cr>

nnoremap <leader>1 @k
nnoremap <leader>2 <c-w>=
nnoremap <leader>3 <c-w>_

nnoremap <leader>se :setlocal spell spelllang=en_us
nnoremap <leader>sb :setlocal spell spelllang=pt_br
nnoremap <leader>sn :set nospell


"Programming comments
"nnoremap <leader>' I"A"
"nnoremap <leader>" IxAx
"noremap .' I/* A*/
"noremap ." IxxxAxx>
"nnoremap .i I/*
"nnoremap .f A*/
"nnoremap .l I* <<<


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
if has("win32")
    nnoremap .c :<C-U>!clang -o3 -Wall -pedantic -std=c99 % -o CL_OUT.exe <CR>
    nnoremap .cl :<C-U>!cl /O2 /TC /Wall /analyze % <CR>
    nnoremap .gc :<C-U>!gcc  -o3 -Wall -pedantic -std=c99 % -o GCC_OUT.exe<CR>
    nnoremap .f :%!clang-format.exe  --style="{BasedOnStyle: llvm, IndentWidth: 4}" %<CR>
else
    nnoremap .c :<C-U>!clang -o3 -Wall -pedantic -std=c99 %:r.c -o ~/a.out<CR>
    nnoremap .gc :<C-U>!gcc  -o3 -Wall -pedantic -std=c99 % -o ~/a.out<CR>
    nnoremap .va :<C-U>!valgrind ~/a.out<CR>
    nnoremap .a :<C-U>!~/a.out<CR>
endif


"MACROS 
" Tips: - Don't use numbers
"       - Saving macros in your file can lead to weird glitches in
"         unicode characters in Windows???

let @i='GVgg<G' "unindent the whole document one position to the left
let @t=':let time =strftime("%c"):put = time' "creates and print a time variable
let @c='\ad\p\agu:w!:%!capitalize.exe %\a\y'
"let @c=':%!capitalize.exe %'
inoremap <F1>  <space><space><space><space>
nnoremap <F1> ç
inoremap <tab>  <c-n>



"Deactivated because they annoyed me
nnoremap ., çç  
nnoremap .. çç  
nnoremap .e çç  
nnoremap .x çç  
nnoremap .v çç  
nnoremap .b çç  
nnoremap .z çç  
nnoremap  S çç 
vnoremap  s çç 
nnoremap  , çç
nnoremap  Q çç
nnoremap  <S-Down> çç
nnoremap  <S-Up> çç
vnoremap  <S-Down> çç
vnoremap  <S-Up> çç


"---------------------------
"  COMMAND CODE REFERENCES 
"---------------------------
"Esc = 
"Enter = 


"------------------------
"       TEMPORARY 
"------------------------
"let @r='Iv/>h\y'  
"let @d='Av?>l\y'  
"let @m='\=-vexxA€kD >>> €kDA€kb'
"let @n='/>\w\\--\=\=--A€kDA€kD'
"let @w='A€kDA€kDA€kD'
"let @u='içúçóçáãõô'

"if has("win32")
"    noremap <leader>y "+yy
"    vnoremap <leader>y "+yy
"    nnoremap <leader>p "+p
"else
"    noremap <leader>y "*yy
"    vnoremap <leader>y "*yy
"    nnoremap <leader>p "*p
"endif



"------------------------
"       OLD MACROS
"------------------------
"let @c='i#include <stdio.h>int main(){return(0);}'
"let @k='|'
"noremap .j :'<,'>!fmt -w 80


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

"To set the default font used by GVim, add a command of the form set guifont= to your gvimrc. If you want to add it to vimrc file, then enclose this command in a if has("gui_running") block.

"print command to the buffer
":put =range(11,15)
":windo set scrollbind
"expadir
" %s/ de / /ge |  %s/ do / /ge | %s/ da / /ge | %s/ dos / /ge | %s/ das / /ge  | %s/ dàs / /ge | %s/ à / /ge | %s/ às / /ge | %s/ aos / /ge  | %s/ para / /ge | %s/ aos / /ge | %s/ por / /ge | %s/ a / /ge | %s/ ou / /ge | %s/ em / /ge | %s/ na / /ge | %s/ no / /ge

"------------------------



