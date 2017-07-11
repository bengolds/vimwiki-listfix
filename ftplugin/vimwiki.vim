function! BetterListLevel(lnum)
  let l:this_indent = indent(a:lnum)/shiftwidth()
  let l:next_indent = indent(a:lnum + 1 )/shiftwidth()

  if l:next_indent > l:this_indent
    return '>' . l:next_indent
  else
    return l:this_indent
  endif 
endfunction

setlocal foldmethod=expr
setlocal foldexpr=BetterListLevel(v:lnum)
setlocal foldtext=VimwikiFoldText()

