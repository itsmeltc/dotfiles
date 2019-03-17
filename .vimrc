let g:airline_powerline_fonts = 1
execute pathogen#infect()
cnoremap sudow w !sudo tee % >/dev/null
