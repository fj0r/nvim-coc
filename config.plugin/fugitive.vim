cnoreabbrev gca  Gcommit
cnoreabbrev gcaa Gcommit --amend

cnoreabbrev gps  Gpush
cnoreabbrev gpsf Gpush -f
cnoreabbrev gpl  Gpull

cnoreabbrev gs   Gstatus
cnoreabbrev gl   Glog
cnoreabbrev gd   Gdiffsplit
cnoreabbrev gb   Gblame

cnoreabbrev gc   G checkout
cnoreabbrev gn   G checkout -b

cnoreabbrev gm   G merge
cnoreabbrev gr   Grebase

nnoremap <Leader>s  :<C-u>Gstatus<CR>
nnoremap <Leader>v  :<C-u>Glog<CR>

command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>

