" git clone https://github.com/junegunn/vim-plug.git ~/.vim/autoload/plug.vim

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


" VIM PLUGGNED SEETING:{{{1

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" The monokai color scheme.
Plug 'filfirst/monota'

" The project source tree browser.
Plug 'scrooloose/nerdtree'

" The enhanced editor status bar.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" The enhanced C++ syntax highlighting.
Plug 'octol/vim-cpp-enhanced-highlight'

" The auto-complete module.
Plug 'valloric/youcompleteme'

Plug 'vim-scripts/taglist.vim'

Plug 'ludovicchabant/vim-gutentags'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-unimpaired'
Plug 'yggdroot/leaderf'
Plug 'shougo/echodoc'
Plug 'w0rp/ale'


" Plug 'kana/vim-textobj-user'
" Plug 'kana/vim-textobj-indent'
" Plug 'kana/vim-textobj-syntax'
" Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
" Plug 'sgur/vim-textobj-parameter'

" Initialize plugin system
call plug#end()



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


" Ale SETTING:{{{1
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++11'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_sign_error = "\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta


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


" Vim-gutentags SETTINGS:{{{1
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']


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