call plug#begin('~/.vim/plugged')

    " Status bar
    Plug 'itchyny/lightline.vim'

    " Floating windows
    Plug 'voldikss/vim-floaterm'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Theme
    Plug 'cocopon/iceberg.vim'
    Plug 'gkeep/iceberg-dark'

    " Syntax highlighting
    Plug 'sheerun/vim-polyglot'

    " Linter
    Plug 'dense-analysis/ale'

    " Autocomplete
    Plug 'Valloric/YouCompleteMe', { 'for': ['dockerfile', 'yaml.docker-compose', 'yaml.docker-compose', 'rust', 'dockerfile', 'Dockerfile', 'javascript', 'vue', 'go'] }

    " Python
    Plug 'lifepillar/vim-mucomplete', { 'for': 'python' }
    Plug 'davidhalter/jedi-vim', { 'for': 'python' }
    Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
    Plug 'psf/black', { 'branch': 'stable', 'for': 'python' }
    Plug 'fisadev/vim-isort', {'for': 'python'}

    " HTML
    Plug 'alvan/vim-closetag'

    " General utilities
    Plug 'preservim/nerdcommenter'
    Plug 'Yggdroot/indentLine'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'

call plug#end()
