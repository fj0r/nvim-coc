let g:coc_data_home = resolve(expand(g:nvim_home.'/coc-data'))
let g:coc_user_config = {
    \ "languageserver": {}
  \ }
let g:coc_global_extensions = g:nvim_preset == 'core'
    \ ? []
    \ : [
        \ 'coc-explorer',
        \ 'coc-bookmark',
        \ 'coc-calc',
        \ 'coc-docker',
        \ 'coc-git',
        \ 'coc-go',
        \ 'coc-json',
        \ 'coc-pyright',
        \ 'coc-rust-analyzer',
        \ 'coc-sh',
        \ 'coc-snippets',
        \ 'coc-tasks',
        \ 'coc-tsserver',
        \ 'coc-vimlsp',
        \ 'coc-metals',
        \ 'coc-yaml',
        \ 'coc-emmet',
        \ 'coc-css',
        \ 'coc-html',
        \ 'coc-vetur',
        \ 'coc-yank',
        \ ]

