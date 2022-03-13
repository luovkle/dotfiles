set laststatus=2
set noshowmode

let g:lightline = { 'colorscheme': 'icebergDark' }

let g:lightline.separator            = { 'left': "", 'right': "" }
let g:lightline.subseparator         = { 'left': "", 'right': "" }
let g:lightline.tabline_separator    = { 'left': "", 'right': "" }
let g:lightline.tabline_subseparator = { 'left': "", 'right': "" }

let g:lightline.active = {
            \ 'left': [ [ 'mode', 'paste' ],
            \           [ 'readonly', 'filename', 'modified'] ],
            \ 'right': [ [ 'filetype', 'lineinfo' ] ]
            \ }
let g:lightline.inactive = {
            \ 'left': [ [ 'filename', 'modified' ]],
            \ 'right': [ [ 'filetype', 'lineinfo' ] ]
            \ }
let g:lightline.tabline = {
            \ 'left': [ [ 'tabs' ] ],
            \ 'right': [ [ 'gitbranch' ],
            \ [ 'gitstatus' ] ]
            \ }

function! MyFilename()
  if expand('%:t') =~ 'ControlP'
    return g:lightline.ctrlp_prev . ' ' . g:lightline.subseparator.left . ' ' . 
          \ g:lightline.ctrlp_item . ' ' . g:lightline.subseparator.left . ' ' .
          \ g:lightline.ctrlp_next
  endif
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() : 
        \  &ft == 'unite' ? unite#get_status_string() : 
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! CtrlPMark()
  return expand('%:t') =~ 'ControlP' ? g:lightline.ctrlp_marked : ''
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'Function_Name_1',
  \ 'prog': 'Function_Name_2',
  \ }
function! Function_Name_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  let g:lightline.ctrlp_marked = a:marked
  return lightline#statusline(0)
endfunction
function! Function_Name_2(str)
  return lightline#statusline(0)
endfunction

