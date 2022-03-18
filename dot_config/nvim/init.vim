" Polyglot
let g:polyglot_disabled = ['autoindent']

" Plugins
source ~/.config/nvim/plugins.vim

" Lightline
source ~/.config/nvim/lightline.vim

" Mappings
source ~/.config/nvim/mappings.vim

" NERDCommenter
let g:NERDAltDelims_python = 1
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1

" Indent Line
let g:indentLine_char_list = ['|']
autocmd Filetype json let g:indentLine_setConceal = 0
autocmd Filetype markdown let g:indentLine_setConceal = 0

" Iceberg (theme)
syntax on
set t_Co=256
colorscheme iceberg
highlight LineNr guibg=bg
highlight CursorLineNr guibg=bg
hi VertSplit guibg=#1e2132
set fillchars+=vert:\ 
hi EndOfBuffer ctermfg=0 guifg=bg
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Vim
set encoding=utf-8
set number relativenumber numberwidth=1
set cursorline
set mouse=a
set ruler
set clipboard=unnamed
set showcmd
set showmatch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
let g:pyindent_open_paren = '&sw * 1'
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd FileType vue set ai sw=2 sts=2 et
autocmd FileType javascript,typescript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType html,htmldjango set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType pug set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType css set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType scss,sass set tabstop=2|set shiftwidth=2|set expandtab
set foldmethod=manual
hi Folded guibg=bg
let g:netrw_banner=0

" Floaterm
hi Floaterm guibg=#161821
hi FloatermBorder guibg=#161821 guifg=#6b7089
let g:floaterm_title=''
let g:floaterm_width=0.8
let g:floaterm_height=0.8

" Fzf
let $FZF_DEFAULT_OPTS = '--reverse --preview-window noborder --color=hl:#e27878,hl+:#e27878,fg+:#d2d4de,bg+:#161821,prompt:#89b8c2,pointer:#e27878'
let g:fzf_preview_window = ['right:70%:hidden', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.79, 'highlight': 'Comment' ,'border': 'sharp' } }

" Polyglot (x2)
let g:python_highlight_space_errors = 0
hi pythonFunctionCall guifg = None
hi pythonClass guifg = #e2a478

" YCM
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_max_num_candidates = 12
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0

" ALE
set signcolumn=yes
highlight SignColumn guibg=None
highlight ALEWarningSign guifg=#e2a478 guibg=None
highlight ALEErrorSign guifg=#e27878 guibg=None
let g:ale_lint_on_text_changed = 'Normal'
let g:ale_lint_on_save = 0
let g:ale_lint_delay = 0
let g:ale_linters_ignore = {
    \ 'python': ['mypy', 'flake8']
    \ }
let g:ale_linters = {
    \ 'python': ['pycodestyle', 'pyflakes'],
    \ 'go': ['gopls'],
    \ 'javascript': ['eslint'],
    \ 'vue': ['eslint']
    \ }
let g:ale_virtualenv_dir_names = ['.venv']

" Auto Pairs
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutFastWrap = ''
let g:AutoPairsShortcutJump = ''
let g:AutoPairsShortcutBackInsert = ''
let g:AutoPairsCenterLine = 0
autocmd FileType python let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''", "f'":"'"}
autocmd FileType html,htmldjango let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''", '%':'%'}

" Gitgutter
let g:gitgutter_enabled = 0
let g:gitgutter_map_keys = 0
highlight GitGutterAdd    guifg=#e2a478 guibg=None
highlight GitGutterChange guifg=#e2a478 guibg=None
highlight GitGutterDelete guifg=#e2a478 guibg=None

" MUcomplete
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " Add only if Vim beeps during completion
highlight Pmenu guibg = #2E3244
highlight PmenuSel guibg = #3D435C

" Jedi-Vim
set completeopt-=preview
set completeopt+=longest,menuone,noselect
let g:jedi#popup_on_dot = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#show_call_signatures = "0"

" closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

" vim-pydocstring
let g:pydocstring_formatter = 'google'

" vim-isort
let g:vim_isort_map = ''

" Figure out the system Python for Neovim.
if exists("$VIRTUAL_ENV")
    let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
    let g:python3_host_prog=substitute(system("which python3"), "\n", '', 'g')
endif
