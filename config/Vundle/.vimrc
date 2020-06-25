" Gneral SETTINGS:{{{1
" ---------- General Settings ----------

set autoread
set autowrite
set ai
set bs=2
" set backspace=eol,start,indent
set backspace=2
set nobackup
set cindent
set cinoptions=:0
set completeopt=longest,menuone
set expandtab
set encoding=utf-8
set fileencodings=utf-8,gbk,gb2312,gb18030
set fileformat=unix
set fileencoding=utf-8
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=l
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
set pumheight=10
set ruler
set scrolloff=5
set softtabstop=4
set showcmd
set smartindent
set smartcase
set sidescroll=1
set sidescrolloff=15
set showbreak=" "
set showcmd
set smartcase
set so=7
set t_Co=256
set termencoding=utf-8
set textwidth=140
set whichwrap=h,l
set wildignore=*.bak,*.o,*.e,*~
set wildmenu
set wildmode=list:longest,full
set nowrap

autocmd FileType c,cpp,py,cc set shiftwidth=4 | set expandtab

syntax enable

" Show line numbers
set number

" Highlight matching brace
set showmatch

" Highlight all search results
set hlsearch

" Highlight the current cursor line
set cursorline

" Highlight the 80 columns margin.
set colorcolumn=140

" Trim the trailing white space on save.
autocmd BufWritePre <buffer> :%s/\s\+$//e

" ---------- Indentation ----------
" Use spaces instead of tabs
set expandtab
" set noexpandtab

" Number of spaces that a <TAB> in the file counts for
set tabstop=4

" Number of auto-indent spaces
set shiftwidth=4
set autoindent

" ---------- Folding ----------
set foldenable
set foldmethod=marker


" SHORTCUT SETTINGS:{{{1
"space to command mode.
nnoremap <space> :
vnoremap <space> :
" Set mapleader
let mapleader=","
" "cd" to change to open directory.
let OpenDir=system("pwd")
nmap <silent> <leader>cd :exe 'cd ' . OpenDir<cr>:pwd<cr>

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" Vundle SETTINGS:{{{1
"""""""""""""""""Vundle"""""""""""""""""""""
set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" If the vim script name is haved, then  rename the vim script.
"Plugin 'user/L9', {'name': 'newL9'}

" from vim sripts.

" The left tarlist
Plugin 'taglist.vim'

" from github.

" The monokai color scheme.
Plugin 'filfirst/Monota'

" The project source tree browser.
Plugin 'scrooloose/nerdtree'

" Find file.
Plugin 'kien/ctrlp.vim'

" Symbol aligning.
Plugin 'godlygeek/tabular'

" Automatic annotation.
Plugin 'ddollar/nerdcommenter'

" The enhanced editor status bar.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Snippets.
Plugin 'honza/vim-snippets'

" The enhanced C++ syntax highlighting.
Plugin 'octol/vim-cpp-enhanced-highlight'

" The auto-complete module.
Plugin 'Valloric/YouCompleteMe'

" vim syntastic
" Plugin 'vim-syntastic/syntastic'

" auto insert.
" Plugin 'sirver/ultisnips'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" Monota SETTINGS:{{{1
" ---------- Monokai color scheme ----------
syntax on
colorscheme Monota           " Set the color scheme is Monota.



"NERDTree SETTINGS:{{{1
" ---------- NerdTree Project Browser ----------
nnoremap <C-n> :NERDTreeToggle<CR>

let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeQuitOnOpen=1

let NERDTreeShowHidden = 1
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif



" CtrIP  SETTINGS:{{{1
" <c-p> to use the function
" <c-c> to end use



"Highlighting SETTINGS:{{{1
" ---------- Enhanced C++ syntax highlighting ----------
let g:cpp_class_scope_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1


" YouCompleteMe SETTINGS:{{{1
" ---------- YCM Auto Complete ----------
nnoremap <C-a> :YcmCompleter GoTo<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/REPO_DIRECTORY/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

let g:ycm_python_binary_path = '/usr/bin/python3.5'

let g:ycm_key_list_previous_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0



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


"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


" UltiSnips SETTINGS:{{{1
let g:UltiSnipsExpandTrigger         = "<C-h>"
let g:UltiSnipsJumpForwardTrigger    = "<C-j>"
let g:UltiSnipsListSnippets          = "<C-i>"
let g:UltiSnipsJumpBackwardTrigger   = "<C-k>"


" NERDcommenter SETTINGS:{{{
" <leader> = ','
" <leader>cc        == use //
" <leater>c<SPACE>  == cancle //


" Taglist SETTINGS:{{{1
""""""""""""Taglist""""""""""""""""""
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



" Catgs SEETING:{{{1
""""""""""""""Ctags""""""""""""""""""

"" make tags file
" cd $project
" ctags -R *


""" single file generate tags, Press F9
set tags+=/usr/include/tags;
set tags+=./tags;$HOME
set tags+=./.tags;,.tags
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


" NEWnamp SETTINGS:{{{1
nmap <F2> :Tlist<CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F9> :call RunShell("Generate tags", "ctags -R * --c++-kinds=+p --fields=+iaS --extra=+q .")<cr>
