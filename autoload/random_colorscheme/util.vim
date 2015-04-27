scriptencoding utf-8
" ==============================================================================
" Filename: autoload/random_colorscheme/util.vim
" Author: Y.Tsutsui
" License: MIT License
" Last Change: 2015/04/27 15:16:46.
" ==============================================================================

let s:save_cpo = &cpo
set cpo&vim

function! random_colorscheme#util#set_default(var, val) abort
  if !exists(a:var) || type({a:var}) != type(a:val)
    unlet {a:var}
    let {a:var} = a:val
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
" vim:set ts=8 sts=2 sw=2 tw=0 expandtab foldmethod=marker:
