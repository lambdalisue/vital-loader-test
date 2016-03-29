let s:root = expand('<sfile>:p:h')

set nocompatible
execute 'set runtimepath+=' . fnameescape(s:root)

let s:V = vital#of('loader_test')

" 下記をコメントアウトすると &statusline が空っぽになる
let s:Dummy = s:V.import('Dummy')

function! DummyStatusline() abort
  let s:Dummy = s:V.import('Dummy')
  return 'Hello'
endfunction

set laststatus=2
set statusline=%{DummyStatusline()}
