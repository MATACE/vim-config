" GENERAL SETTINGS: {{{1
set autoindent
set autoread
set autowrite
set ai
set bs=2
set backspace=eol,start,indent
set nobackup
set cindent
set cinoptions=:0
set cursorline
set completeopt=longest,menuone
set noexpandtab
set expandtab
set encoding=utf-8
set foldenable
set fileencodings=utf-8,gbk,gb2312,gb18030
set fileformat=unix
set foldmethod=marker
set fileencoding=utf-8
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=l
set hlsearch
set helplang=cn
set hidden
set history=1000
set incsearch
set ignorecase
set laststatus=2
set linebreak
set mouse=a
set magic
set nobackup
set nu
set noerrorbells
set novisualbell
set number
set pumheight=10
set ruler
set scrolloff=5
set softtabstop=4
set shiftwidth=4
set showcmd
set showmatch
set smartindent
set smartcase
set sidescroll=1
set sidescrolloff=15
set showbreak=" "
set showcmd
set smartcase
set so=7
set t_Co=256
set tabstop=4
set termencoding=utf-8
set textwidth=140
set whichwrap=h,l
set wildignore=*.bak,*.o,*.e,*~
set wildmenu
set wildmode=list:longest,full
set nowrap

autocmd FileType c,cpp,py,cc set shiftwidth=4 | set expandtab


" AUTO COMMANDS: {{{1
" auto expand tab to blanks
"autocmd FileType c,cpp set expandtab
" Restore the last quit position when open file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" for simplify, " au BufReadPost * exe "normal! g'\"", is Okay.
endif



" SHORTCUT SETTINGS:{{{1
"space to command mode.
nnoremap <space> :
vnoremap <space> :
" Set mapleader
let mapleader=","
" "cd" to change to open directory.
let OpenDir=system("pwd")
nmap <silent> <leader>cd :exe 'cd ' . OpenDir<cr>:pwd<cr>


" Vundle SETTINGS:{{{1
"""""""""""""""""Vundle"""""""""""""""""""""
set shell=/bin/bash
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let vundle manage Vundle
"Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'user/L9', {'name': 'newL9'}


Plugin 'VundleVim/Vundle.vim'


"from vim sripts
Plugin 'taglist.vim'
Plugin 'TaskList.vim'
Plugin 'cscope.vim'
Plugin 'vimgdb'


"from github
Plugin 'tpope/vim-fugitive'
"Plugin 'altercation/solarized'
Plugin 'lifepillar/vim-solarized8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'vim-syntastic/syntastic'
"Plugin 'python-mode/python-mode'
Plugin 'tabular'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easeflyer/gd_plugin'
Plugin 'Lokaltog/vim-powerline'
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on


" YouCompleteMe SETTINGS:{{{1
"""""""""""YouCompleteMe""""""""""""""""


let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf=0
let g:ycm_python_binary_path = '/usr/bin/python3.5'

set completeopt=longest,menu
let g:ycm_key_list_previous_completion=['<Down>']
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_seed_identifiers_with_syntax=1


let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=0


"   Syntastic SETTINGS:{{{1
"""""""""""syntastic""""""""""""""""""""
"let g:syntastic_mode_map = {'mode':'active','active_filetypes':[],'passive_filetypes':[]}
"let g:syntastic_check_on_open=1
"let g:syntastic_cpp_include_dirs=['/usr/include']
"let g:syntastic_cpp_remove_include_errors=1
"let g:syntastic_cpp_check_header=1
"let g:syntastic_cpp_compiler='clang++'
"let g:syntastic_cpp_compiler_options='-std=c++11 -Wall -stdlib=libc++ -Wextra -Wpendantic'
"let g:syntastic_error_symbol='>>'
"let g:syntastic_warning_symbol='!'
"let g:syntastic_enable_balloons=1
"let g:syntastic_enable_highlighting=1
"let g:syntastic_enable_signs=1
"let g:syntastic_python_python_exec='/bin/python3'

  "
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


"  Color SETTINGS:{{{1
""""""""""""""""color"""""""""""""""
syntax enable
set background=dark
colorscheme solarized


"NERDTree SETTINGS:{{{1
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeQuitOnOpen=1



" CtrIP  SETTINGS:{{{1
" <c-p> to use the function
" <c-c> to end use


" Cscops SETTINGS:{{{1
if has("cscope")
   set csto=1
    set cst
    set nocsre
" add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
" else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

"VimGDB  SETTINGS:{{{1
if has("gdb")
    set asm=0
    let g:vimgdb_debug_file=""
    run macros/gdb_mappings.vim
endif


" UltiSnips SETTINGS:{{{1
let g:UltiSnipsExpandTrigger         = "<C-h>"
let g:UltiSnipsJumpForwardTrigger    = "<C-j>"
let g:UltiSnipsListSnippets          = "<C-i>"
let g:UltiSnipsJumpBackwardTrigger   = "<C-k>"


" Powerline SETTINGS:{{{1
let g:Powerline_colorscheme = 'solarized256'



" NERDcommenter SETTINGS:{{{
" <leader> = ','
" <leader>cc        == use //
" <leater>c<SPACE>  == cancle //


" Taglist SETTINGS:{{{1
""""""""""""ctags and Taglist""""""""""""""""""
let Tlist_WinWidth=34
let Tlist_Auto_Open=0
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_SingleClick=1
let g:Tlist_Auto_Update=1
let Tlist_Process_File_Always=1
let Tlist_Enable_Fold_Column=0
"let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Auto_Update=1


"" make tags file
" cd $project
" ctags -R *


""" single file generate tags, Press F12
set tags=/home/codingeveryday/pra_programming/unix_apue_src/chapter5_standard_io/tags;
set tags+=/usr/include/tags
set tags+=./tags;$HOME
set autochdir
map ta :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Function SETTINGS:{{{1
function!UpdateTagsFile()
silent!ctags -R --c++-kinds=+p --fields=+ianS --extra=+q
endfunction

" plugin shortcuts
function! RunShell(Msg, Shell)
	echo a:Msg . '...'
	call system(a:Shell)
	echon 'done'
endfunction


" Gundo SETTINGS:{{{1
nnoremap <leader>u :GundoToggle<CR>


" NEWnamp SETTINGS:{{{1
nmap <F2> :Tlist<CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F6> :vimgrep /<C-R>=expand("<cword>")<cr>/ **/*.c **/*.h<cr><C-o>:cw<cr>
nmap <F11> :call RunShell("Generate filename tags", "~/.vim/shell/genfiletags.sh")<cr>
nmap <F12> :call RunShell("Generate cscope", "cscope -Rb")<cr>:cs add cscope.out<cr>
nmap <leader>sa :cs add cscope.out<cr>
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<cr><cr>
nmap <leader>st :cs find t <C-R>=expand("<cword>")<cr><cr>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <leader>si :cs find i <C-R>=expand("<cfile>")<cr><cr>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<cr><cr>
nmap  <F9> :call RunShell("Generate tags", "ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .")<cr>
nnoremap <leader>jd :YouCompleteMeGoToDefinitionElseDeclaration<CR>

" Clang_competel SETTINGS:{{{1
"let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" or path directly to the library file
let g:clang_library_path='/usr/lib/llvm-3.9/lib/libclang-3.9.1.so'
