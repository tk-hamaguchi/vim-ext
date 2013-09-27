if exists('b:did_indent')
  finish
endif

set list

setlocal expandtab
setlocal indentexpr=GetCoffeeIndent()
setlocal indentkeys=!^F,o,O

setlocal tabstop<
setlocal softtabstop=2
setlocal shiftwidth=2

let b:undo_indent = 'setlocal '.join([
\   'autoindent<',
\   'expandtab<',
\   'indentexpr<',
\   'indentkeys<',
\   'shiftwidth<',
\   'softtabstop<',
\   'tabstop<',
\ ])


function! s:remove_dust()

	let cursor = getpos(".")

	" 保存時に行末の空白を除去する
	%s/\s\+$//ge

	" 保存時にtabを2スペースに変換する
	%s/\t/  /ge

	call setpos(".", cursor)
	unlet cursor

endfunction


function! GetCoffeeIndent()
  return -1
endfunction


autocmd BufWritePre * call <SID>remove_dust()

let b:did_indent = 1
