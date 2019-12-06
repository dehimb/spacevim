function! myspacevim#before() abort
  set conceallevel=0
  call SpaceVim#custom#SPC('nmap', ['f', 'v', 'e'], ':e ~/.SpaceVim.d/autoload/myspacevim.vim', 'edit custom keybindings', 1)
  let g:mapleader  = ';'
  let g:go_decls_includes = 'func,type'
  let g:go_decls_mode = 'ctrlp'
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
  let g:UltiSnipsExpandTrigger="<NUL>"

  let g:ctrlp_custom_ignore = '\v[\/](vendor|dist)|(\.(swp|ico|git|svn))$'

endfunction
