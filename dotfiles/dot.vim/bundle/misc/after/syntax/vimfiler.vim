" Over write default syntax

let env = has('gui_running')  ? 'gui' : 'cterm'
let ColorItem = 'Normal'
let BackGroundColor = synIDattr(synIDtrans(hlID(ColorItem)), 'bg#', env)

if env == 'gui'
  " Gui
  if BackGroundColor < "#7f7f7f"
    " Background dark
    highlight VimFilerPrompt guifg=#afcfff guibg=bg gui=NONE
    highlight VimFilerCurrentDirectory guifg=#afcfff guibg=bg gui=NONE
    highlight VimFilerSpecial guifg=#afcfff guibg=bg gui=NONE
  else
    " Background light
    highlight VimFilerPrompt guifg=#8f5f3f guibg=bg gui=NONE
    highlight VimFilerCurrentDirectory guifg=#8f5f5f guibg=bg gui=NONE
    highlight VimFilerSpecial guifg=#3f5f8f guibg=bg gui=NONE
  endif
else
  " Cui
endif

highlight link VimfilerTypeDirectory Directory
