let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /mnt/data/UFMG/Pre-TCC/thesis
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
tabnew
tabrewind
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 22 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 24 + 79) / 159)
exe '2resize ' . ((&lines * 22 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 26 + 79) / 159)
exe '3resize ' . ((&lines * 22 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 28 + 79) / 159)
argglobal
enew
balt Capitulos/02.Revisao.tex
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
enew
balt /usr/share/nvim/runtime/doc/starting.txt
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
enew
balt /usr/share/nvim/runtime/doc/starting.txt
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
exe '1resize ' . ((&lines * 22 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 24 + 79) / 159)
exe '2resize ' . ((&lines * 22 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 26 + 79) / 159)
exe '3resize ' . ((&lines * 22 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 28 + 79) / 159)
tabnext
edit Capitulos/02.Revisao.tex
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext 2
badd +14 Capitulos/02.Revisao.tex
badd +909 /usr/share/nvim/runtime/doc/starting.txt
badd +1 NERD_tree_1
badd +1 /mnt/data/Planning/notes.md
badd +13 Capitulos/01.Introducao.tex
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1 shortmess=aoO
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
