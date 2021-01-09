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
noremap <silent><leader>e  :CocCommand explorer --preset e<CR>
noremap <silent><leader>r  :CocCommand explorer --preset f<CR>
noremap <silent><leader>xe :CocCommand explorer<CR>
noremap <silent><leader>xc :CocCommand explorer --preset .vim<CR>
noremap <silent><leader>xv :CocCommand explorer --preset v<CR>
" List all presets
noremap <silent><leader>xl :CocList explPresets<CR>

let g:coc_user_config['explorer.keyMappings.global'] = {
    \ "v": "open:vsplit",
  \ }
