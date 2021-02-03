" rust {{{
let g:coc_user_config['rust-analyzer.serverPath'] = '/usr/local/bin/rust-analyzer'
" }}}

" go {{{
let g:coc_user_config['go.goplsPath'] = $HOME.'/go/bin/gopls'
" }}}

" haskell {{{
let g:coc_user_config.languageserver.haskell = {
    \ "command": "haskell-language-server-wrapper",
    \ "args": ["--lsp"],
    \ "rootPatterns": [ "*.cabal", "stack.yaml", "cabal.project", "package.yaml", "hie.yaml" ],
	\ "filetypes": [ "haskell", "ihaskell" ]
\ }
" }}}

