if exists('g:bufferline_loaded')
  finish
endif
let g:bufferline_loaded = 1

function! s:check_defined(variable, default)
  if !exists(a:variable)
    let {a:variable} = a:default
  endif
endfunction

call s:check_defined('g:bufferline_active_buffer_left', '[')
call s:check_defined('g:bufferline_active_buffer_right', ']')
call s:check_defined('g:bufferline_separator', ' ')
call s:check_defined('g:bufferline_modified', '+')
call s:check_defined('g:bufferline_echo', 1)
call s:check_defined('g:bufferline_show_bufnr', 1)
call s:check_defined('g:bufferline_fname_mod', ':t')

" 0: no rotate, no scrolling
" 1: scrolling with fixed current buffer position
" 2: scrolling without fixed current buffer position
call s:check_defined('g:bufferline_rotate', 0)

if g:bufferline_echo
  call bufferline#init_echo()
endif
