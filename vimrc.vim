set nocompatible

function! StatuslineKiller() abort
  try
    call unknown#function()
  catch
    return 'Unknown'
  "catch /^Vim\%((\a\+)\)\=:E117/
  "  return 'Unknown'
  endtry
  return 'Hello'
endfunction

set laststatus=2
set statusline=%{StatuslineKiller()}
