scriptencoding utf-8
" ==============================================================================
" Filename: autoload/random_colorscheme/util.vim
" Author: Y.Tsutsui
" License: MIT License
" Last Change: 2015/04/27 16:11:48.
" ==============================================================================

let s:save_cpo = &cpo
set cpo&vim

let s:RAND_MAX = 32767
let s:seed = 0

function! random_colorscheme#util#set_default(var, val) abort
  if !exists(a:var) || type({a:var}) != type(a:val)
    unlet {a:var}
    let {a:var} = a:val
  endif
endfunction

function! random_colorscheme#util#rand_init(seed) abort
  let s:seed = a:seed
endfunction

function! random_colorscheme#util#rand() abort
  " 実装は下記ページから丸パクり
  " (追記に書かれているMSVCの乱数実装)
  " http://d.hatena.ne.jp/mFumi/20110920/1316525906
  let s:seed = s:seed * 214013 + 2531011
  return (s:seed < 0 ? s:seed - 0x80000000 : s:seed) / 0x10000 % 0x8000
endfunction

function! random_colorscheme#util#rand_n(max) abort
  return random_colorscheme#util#rand() % (a:max < 1 ? 1 : a:max)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
" vim:set ts=8 sts=2 sw=2 tw=0 expandtab foldmethod=marker:
