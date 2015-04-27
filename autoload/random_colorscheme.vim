scriptencoding utf-8
" ==============================================================================
" Filename: autoload/random_colorscheme.vim
" Author: Y.Tsutsui
" License: MIT License
" Last Change: 2015/04/27 16:35:00.
" ==============================================================================

let s:save_cpo = &cpo
set cpo&vim

function! random_colorscheme#init() abort
  " g:random_colorscheme#change_background
  "   backgroundのlight/darkも切り替える
  "   デフォルト: 1
  call random_colorscheme#util#set_default('g:random_colorscheme#change_background', 1)

  " 乱数のシードを初期化
  call random_colorscheme#util#rand_init(localtime())
endfunction

function! random_colorscheme#change() abort
  let list = s:get_colorschemes()
  let scheme_name = list[random_colorscheme#util#rand_n(len(list))]

  execute 'colorscheme '.scheme_name

  if g:random_colorscheme#change_background
    let bg = random_colorscheme#util#rand_n(2) ? 'light' : 'dark'
    let &background = bg
  endif
endfunction

function! s:get_colorschemes() abort
  return sort(
        \   uniq(
        \     map(split(globpath(&runtimepath, 'colors/*.vim'), '\n'), 'fnamemodify(v:val, ":t:r")')
        \   )
        \ )
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
" vim:set ts=8 sts=2 sw=2 tw=0 expandtab foldmethod=marker:
