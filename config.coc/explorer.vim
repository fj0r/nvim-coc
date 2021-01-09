let g:coc_user_config['explorer.keyMappings.global'] = {
    \ "v": "open:vsplit",
  \ }

" TODO: root-uri: workspace.rootPath
let g:coc_explorer_global_presets = {
            \   'e': {
            \     'width': 30,
            \   },
            \   'f': {
            \     'position': 'floating',
            \     'floating-position': 'left-center',
            \     'floating-width': 50,
            \     'open-action-strategy': 'sourceWindow',
            \   },
            \   'v': {
            \     'position': 'floating',
            \     'floating-position': 'left-center',
            \     'floating-width': 50,
            \     'open-action-strategy': 'vsplit',
            \   },
            \   '.vim': {
            \     'root-uri': stdpath('config'),
            \   }
            \ }
noremap <silent><leader>xe :CocCommand explorer<CR>
noremap <silent><leader>xc :CocCommand explorer --preset .vim<CR>
noremap <silent><leader>xv :CocCommand explorer --preset v<CR>
" List all presets
noremap <silent><leader>xl :CocList explPresets<CR>

if $NVIM_EXPLORER_FIXED
  noremap <silent><leader>e  :CocCommand explorer --preset e<CR>
  let g:coc_user_config['explorer.toggle'] = v:false
else
  noremap <silent><leader>e  :CocCommand explorer --preset f<CR>
  "TODO: [20210109] 显示 border 时渲染会出问题
  let g:coc_user_config['explorer.floating.border.enable'] = v:false
endif
