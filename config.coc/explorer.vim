" TODO: root-uri: workspace.rootPath
let g:coc_explorer_global_presets = {
            \   'e': {
            \     'position': 'floating',
            \     'floating-position': 'left-center',
            \     'floating-width': 50,
            \     'open-action-strategy': 'sourceWindow',
            \   },
            \   '.vim': {
            \     'root-uri': stdpath('config'),
            \   }
            \ }
noremap <silent><leader>e  :CocCommand explorer --preset e<CR>
noremap <silent><leader>xe :CocCommand explorer<CR>
noremap <silent><leader>xc :CocCommand explorer --preset .vim<CR>
" List all presets
noremap <silent><leader>xl :CocList explPresets<CR>

let g:coc_user_config['explorer.keyMappings.global'] = {
    \ "v": "open:vsplit",
  \ }
