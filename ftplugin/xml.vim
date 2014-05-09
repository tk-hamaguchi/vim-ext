setlocal ts=2 sts=2 sw=2
set expandtab

function! s:remove_dust()

	let cursor = getpos(".")
	%s/\s\+$//ge
	%s/\t/  /ge
	call setpos(".", cursor)
	unlet cursor

endfunction

autocmd BufWritePre * call <SID>remove_dust()

