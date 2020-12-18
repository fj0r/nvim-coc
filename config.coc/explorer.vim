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
noremap <silent><leader>e :CocCommand explorer<CR>
noremap <silent><leader>ee :CocCommand explorer --preset e<CR>
noremap <silent><leader><leader> :CocCommand explorer --preset e<CR>
noremap <silent><leader>er :CocCommand explorer --preset v<CR>
noremap <silent><leader>ef :CocCommand explorer --preset h<CR>
noremap <silent><leader>et :CocCommand explorer --preset t<CR>
noremap <silent><leader>ec :CocCommand explorer --preset .vim<CR>
" List all presets
noremap <silent><leader>el :CocList explPresets<CR>
