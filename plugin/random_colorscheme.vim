scriptencoding utf-8
" ==============================================================================
" Filename: plugin/random_colorscheme.vim
" Author: Y.Tsutsui
" License: MIT License
" Last Change: 2015/04/27 10:48:44.
" ==============================================================================
if get(g:, 'loaded_random_colorscheme', 0)
  finish
endif
let g:loaded_random_colorscheme = 1

let s:save_cpo = &cpo
set cpo&vim

let &cpo = s:save_cpo
unlet s:save_cpo
" vim:set ts=8 sts=2 sw=2 tw=0 expandtab foldmethod=marker: