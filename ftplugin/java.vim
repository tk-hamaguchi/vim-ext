setlocal ts=4 sts=4 sw=4
set expandtab

function! s:remove_dust()

	let cursor = getpos(".")
	%s/\s\+$//ge
	%s/\t/  /ge
	call setpos(".", cursor)
	unlet cursor

endfunction

autocmd BufWritePre * call <SID>remove_dust()

