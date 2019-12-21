function! myspacevim#before() abort
  set conceallevel=0
  set signcolumn=yes
  set ignorecase
  let g:neomake_open_list = 0
  call SpaceVim#custom#SPC('nmap', ['f', 'v', 'e'], '::e ~/.SpaceVim.d/autoload/myspacevim.vim', 'edit custom keybindings', 1)
  call SpaceVim#custom#SPC('nmap', ['t', 'b'], ':Tagbar', 'Toggle tagbar', 1)
  let g:mapleader  = ';'
  let g:go_decls_includes = 'func,type'
  let g:go_decls_mode = 'ctrlp'
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
  let g:UltiSnipsExpandTrigger="<NUL>"
  let g:ctrlp_custom_ignore = '\v[\/](vendor|dist)|(\.(swp|ico|git|svn))$'
  " let g:go_metalinter_autosave = 1
  let g:go_debug_log_output = 'debugger'
  let g:go_debug_windows = {
            \ 'vars':       'rightbelow 70vnew',
            \ 'stack':      'rightbelow 30new',
            \ 'goroutines': 'botright 10new',
            \ 'out':        'leftabove 120vnew',
  \ }
  let g:go_def_mode="godef"
  let g:tagbar_autofocus=1
  inoremap <silent><expr> <C-@> coc#refresh()

endfunction
