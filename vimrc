set number
set showcmd
colorscheme delek
syntax enable
set expandtab
set tabstop=4
set softtabstop=4
set wildmenu
set showmatch
set incsearch
"set hlsearch
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
"set foldlevel=0
"
"Key Mappings
nmap qq :q<CR>
nmap <C-\> <C-W><C-]><C-W>T
nmap L <C-W>l
nmap H <C-W>h
nmap K <C-W>k
nmap J <C-W>j
nmap + <C-W>+
nmap _ <C-W>-
nmap < <C-W><
nmap > <C-W>>
nmap <S-Left> gT
nmap <S-Right> gt
nmap 9 $
vmap 9 $
nmap gc `[
nmap <Space> za
imap ,, <Esc>
vmap ,, <Esc>
nmap fd :set foldlevel=
let mapleader=","

" Ctags and Gutentags
"set tag=./.tags;,.tags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

"ALE
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

"YouCompleteMe
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone


noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
"LeaderF

let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
"noremap <c-n> :LeaderfMru<cr>
"noremap <m-p> :LeaderfFunction!<cr>
"noremap <m-n> :LeaderfBuffer<cr>
"noremap <m-m> :LeaderfTag<cr>
nmap fl :LeaderfFile<cr>
nmap mr :LeaderfMru<cr>
nmap fn :LeaderfFunction!<cr>
nmap fb :LeaderfBuffer<cr>
nmap tg :LeaderfTag<cr>
nmap nt :NERDTree<cr>

let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

"Latex
filetype plugin on
filetype indent on
set iskeyword+=:
let g:tex_flavor='latex'
let g:vimtex_compiler_latexmk = {'build_dir' : './build'}
let g:vimtex_compiler_latexmk_engines = {'_' : '-xelatex'}
"let g:vimtex_compiler_latexrun_engines = {'_' : 'xelatex'}
let g:vimtex_quickfix_latexlog = {
          \ 'overfull' : 0,
          \ 'underfull' : 0,
          \ 'packages' : {
          \   'default' : 0,
          \ },
          \}

"Tabular
nmap tb :Tabularize /
vmap tb :Tabularize /
