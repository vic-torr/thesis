let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /mnt/data/UFMG/Thesis
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
set shortmess=aoO
badd +1 __vscode_neovim__-file:///run/user/1000/kio-fuse-XIAyBV/file/mnt/data/UFMG/Thesis/thesis/main.tex
badd +1 ~/.config/nvim/init.vim
badd +20 thesis/Capitulos/02.Revisao.tex
badd +18 __vscode_neovim__-file:///home/vektor/Thesis/thesis/notes.md
badd +19 __vscode_neovim__-file:///home/vektor/Thesis/thesis/Capitulos/02.Revisao.tex
badd +5 __vscode_neovim__-file:///home/vektor/Thesis/thesis/main.tex
badd +28 __vscode_neovim__-file:///home/vektor/Thesis/thesis/Configuracoes/ConfiguracoesAparencia.tex
badd +1 __vscode_neovim__-file:///home/vektor/Thesis/thesis/Configuracoes/ConfiguracoesABNT.tex
badd +1 thesis/__vscode_neovim__-file:///home/vektor/Thesis/thesis/notes.md
badd +1 thesis/__vscode_neovim__-file:///home/vektor/Thesis/thesis/Configuracoes/ConfiguracoesAparencia.tex
badd +1 __vscode_neovim__-file:///run/user/1000/kio-fuse-XIAyBV/file/mnt/data/UFMG/Thesis/thesis/Capitulos/02.Revisao.tex
badd +1 thesis/__vscode_neovim__-output:userDataSyncLog
badd +15 __vscode_neovim__-file:///run/user/1000/kio-fuse-XIAyBV/file/mnt/data/UFMG/Thesis/thesis/.gitignore
badd +12 __vscode_neovim__-file:///run/user/1000/kio-fuse-XIAyBV/file/mnt/data/UFMG/Thesis/thesis/Session.vim
badd +264 __vscode_neovim__-file:///run/user/1000/kio-fuse-XIAyBV/file/mnt/data/UFMG/Thesis/thesis/Referencias.bib
badd +1 __vscode_neovim__-git:/run/user/1000/kio-fuse-XIAyBV/file/mnt/data/UFMG/Thesis/thesis/Referencias.bib\?\%7B\%22path\%22\%3A\%22\%2Frun\%2Fuser\%2F1000\%2Fkio-fuse-XIAyBV\%2Ffile\%2Fmnt\%2Fdata\%2FUFMG\%2FThesis\%2Fthesis\%2FReferencias.bib\%22\%2C\%22ref\%22\%3A\%22~\%22\%7D
badd +1 __vscode_neovim__-file:///run/user/1000/kio-fuse-XIAyBV/file/mnt/data/UFMG/Thesis/thesis/main.tex
argglobal
%argdel
edit thesis/__vscode_neovim__-output:userDataSyncLog
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt thesis/__vscode_neovim__-file:///home/vektor/Thesis/thesis/notes.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let &fdl = &fdl
let s:l = 2 - ((1 * winheight(0) + 100) / 201)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
lcd /mnt/data/UFMG/Thesis/thesis
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd /mnt/data/UFMG/Thesis/thesis
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd /mnt/data/UFMG/Thesis/thesis
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd /mnt/data/UFMG/Thesis/thesis
wincmd w
argglobal
enew
balt /mnt/data/UFMG/Thesis/thesis/__vscode_neovim__-file:///run/user/1000/kio-fuse-XIAyBV/file/mnt/data/UFMG/Thesis/thesis/.gitignore
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd /mnt/data/UFMG/Thesis/thesis
wincmd w
argglobal
enew
balt /mnt/data/UFMG/Thesis/thesis/__vscode_neovim__-file:///run/user/1000/kio-fuse-XIAyBV/file/mnt/data/UFMG/Thesis/thesis/Session.vim
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd /mnt/data/UFMG/Thesis/thesis
wincmd w
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
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
