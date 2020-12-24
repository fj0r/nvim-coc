" TODO: root-uri: workspace.rootPath
let g:coc_explorer_global_presets = {
            \   'e': {
            \     'position': 'floating',
            \     'floating-position': 'left-center',
            \     'floating-width': 50,
            \     'open-action-strategy': 'sourceWindow',
            \   },
            \   't': {
            \     'position': 'floating',
            \     'floating-position': 'left-center',
            \     'floating-width': 50,
            \     'open-action-strategy': 'tab',
            \   },
            \   'v': {
            \     'position': 'floating',
            \     'floating-position': 'left-center',
            \     'floating-width': 50,
            \     'open-action-strategy': 'vsplit',
            \   },
            \   'h': {
            \     'position': 'floating',
            \     'floating-position': 'left-center',
            \     'floating-width': 50,
            \     'open-action-strategy': 'split',
            \   },
            \   '.vim': {
            \     'root-uri': stdpath('config'),
            \   }
            \ }
noremap <silent><leader>e  :CocCommand explorer --preset e<CR>
noremap <silent><leader>xe :CocCommand explorer<CR>
noremap <silent><leader>xr :CocCommand explorer --preset v<CR>
noremap <silent><leader>xf :CocCommand explorer --preset h<CR>
noremap <silent><leader>xt :CocCommand explorer --preset t<CR>
noremap <silent><leader>xc :CocCommand explorer --preset .vim<CR>
" List all presets
noremap <silent><leader>xl :CocList explPresets<CR>
