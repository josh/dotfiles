" maximize window in fullscreen
set fuoptions=maxvert,maxhorz

" no toolbar
set guioptions-=T

" font
set guifont=DejaVu\ Sans\ Mono:h13

" colors
colorscheme ir_black

" open with dimensions
set columns=120
set lines=50

" line numbers
set number

" highlight search results
set hlsearch

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
end
