" Over write default syntax

let env = has('gui_running')  ? 'gui' : 'cterm'
let ColorItem = 'Normal'
let BackGroundColor = synIDattr(synIDtrans(hlID(ColorItem)), 'bg#', env)

if env == 'gui'
  " Gui
  if BackGroundColor < "#7f7f7f"
    " Background dark
    highlight VimShellUserPrompt guifg=#bf3f6f guibg=bg gui=NONE
    highlight VimShellPrompt     guifg=#3f6faf guibg=bg gui=NONE
    highlight VimShellDirectory  guifg=#af6f8f guibg=bg gui=NONE
  else
    " Background light
    highlight VimShellUserPrompt guifg=#8f0f3f guibg=bg gui=NONE
    highlight VimShellPrompt     guifg=#0f3f8f guibg=bg gui=NONE
    highlight VimShellDirectory  guifg=#8f3f5f guibg=bg gui=NONE
  endif
else
  " Cui
endif

