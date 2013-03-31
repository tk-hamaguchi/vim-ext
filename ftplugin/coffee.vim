setlocal ts=2 sts=2 sw=2
set expandtab

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
