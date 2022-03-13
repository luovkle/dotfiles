" VIM
set timeoutlen=300
set ttimeoutlen=0
let mapleader=" "
nmap <M-q> :q!<CR>
nmap <M-w> :w!<CR>
nmap <M-e> :x!<CR>
nmap <M-R> :e!<CR>
nmap <M-x> :nohlsearch<CR>/<Del>
nmap <M-z> @z
vnoremap <leader>y "+y
nnoremap <C-c> <Esc>
inoremap <C-c> <Esc>
nnoremap <C-a> ggVG

" FZF
nmap <M-i> :Files<CR>
nmap <M-o> :Buffers<CR>

" Gitgutter
nmap <Leader>g :GitGutterToggle<CR>

" ALE
nmap <silent> <C-n> <Plug>(ale_next_wrap)

" EasyMotion
let g:EasyMotion_do_mapping = 0
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap <Leader>s <Plug>(easymotion-overwin-f2)
nmap <Leader>w <Plug>(easymotion-overwin-w)
nmap <Leader>e <Plug>(easymotion-bd-e)
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)

" Floaterm
nmap <M-p> :FloatermNew<CR>
autocmd filetype python nnoremap <buffer> <M-,> :FloatermNew(python)<CR>
autocmd filetype python nnoremap <buffer> <M-.> :FloatermNew(python %)<CR>
autocmd filetype python nnoremap <buffer> <M->> :FloatermNew(python -i %)<CR>
autocmd filetype go nnoremap <buffer> <M-.> :FloatermNew(go run %)<CR>
autocmd filetype rust nnoremap <buffer> <M-.> :w!<CR>:FloatermNew(cargo run)<CR>
autocmd filetype javascript nnoremap <buffer> <M-,> :w!<CR>:FloatermNew(deno)<CR>
autocmd filetype javascript nnoremap <buffer> <M-.> :w!<CR>:FloatermNew(deno run %)<CR>
autocmd filetype javascript nnoremap <buffer> <M->> :w!<CR>:FloatermNew(deno run --allow-net %)<CR>
autocmd filetype sh nnoremap <buffer> <M-.> :FloatermNew(bash %)<CR>

" vim-pydocstring
nmap <Leader>ds <Plug>(pydocstring)

" black
nmap <Leader>bl :Black<CR>

" vim-isort
nmap <Leader>is :Isort<CR>
