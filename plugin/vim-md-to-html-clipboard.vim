" Pipe text into pandoc to convert markdown to html,
" then copy that html into the clipboard with the type "text/html" so it can be pasted into applications (e.g. MS Teams) with formatting.
function Mdc() range
  echo system('echo '.shellescape(join(getline(a:firstline, a:lastline), "\n")).'| pandoc -f commonmark_x -t html | xclip -loop 0 -selection c -t text/html')
endfunction

" Create command to call the above function of the same name, if no range is specified the entire buffer is used
com -range=% -nargs=0 Mdc :<line1>,<line2>call Mdc()

" Create lowercase version of this command: (vim doesn't let you create lowercase commands normally)
cnoreabbrev mdc Mdc
