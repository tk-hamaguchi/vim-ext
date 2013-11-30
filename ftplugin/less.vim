"set list

setlocal expandtab

setlocal tabstop<
setlocal softtabstop=2
setlocal shiftwidth=2

function! s:remove_dust()

	let cursor = getpos(".")

	" 保存時に行末の空白を除去する
	%s/\s\+$//ge

	" 保存時にtabを2スペースに変換する
	%s/\t/  /ge

	call setpos(".", cursor)
	unlet cursor

endfunction

autocmd BufWritePre * call <SID>remove_dust()
