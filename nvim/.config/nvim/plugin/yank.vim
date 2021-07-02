" [Yank to xterm-compatible local clipboard](https://youtu.be/JFr28K65-5E?t=3646)
" .bashrc: alias nvim='nvim -c "let g:tty='\''$(tty)'\''"'
function Osc52Yank()
	" register for last yanked content
	let buffer=system('base64', @0)
	let buffer=substitute(buffer, "\n", "", "")
	let buffer='\e]52;c;'.buffer.'\e\'
	silent exe "!echo -ne ".shellescape(buffer).
				\ " > ".shellescape('/dev/tty')
endfunction

" TextYankPost requires vim8plus
"augroup Yank
"	autocmd!
	"autocmd TextYankPost * if v:event.operator ==# 'y' | call Osc52Yank() | endif
"augroup END

