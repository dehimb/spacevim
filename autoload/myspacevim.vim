function! myspacevim#before() abort
  set conceallevel=0
  call SpaceVim#custom#SPC('nmap', ['f', 'v', 'e'], ':e ~/.SpaceVim.d/autoload/myspacevim.vim', 'edit custom keybindings', 1)
  let g:mapleader  = ';'
  let g:go_decls_includes = 'func,type'
  let g:go_decls_mode = 'ctrlp'
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
  let g:UltiSnipsExpandTrigger="<NUL>"

  " NERD Commenter
  " Add spaces after comment delimiters by default
  let g:NERDSpaceDelims = 1
  " Use compact syntax for prettified multi-line comments
  let g:NERDCompactSexyComs = 1
  " Align line-wise comment delimiters flush left instead of following code indentation
  let g:NERDDefaultAlign = 'left'
  " Set a language to use its alternate delimiters by default
  let g:NERDAltDelims_java = 1
  " Allow commenting and inverting empty lines (useful when commenting a region)
  let g:NERDCommentEmptyLines = 1
  " Enable trimming of trailing whitespace when uncommenting
  let g:NERDTrimTrailingWhitespace = 1
  " Enable NERDCommenterToggle to check all selected lines is commented or not 
  let g:NERDToggleCheckAllLines = 1

  let g:ctrlp_custom_ignore = '\v[\/](vendor|dist)|(\.(swp|ico|git|svn))$'

  let g:spacevim_enable_ycm = 1
endfunction
