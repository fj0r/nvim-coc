let g:coc_user_config['Lua.diagnostics.disable'] = [ "lowercase-global" ]
let g:coc_user_config['Lua.completion.callSnippet'] = "Enable"


let s:lua_lsp_home = g:coc_data_home . '/extensions/coc-lua-data/lua-language-server'
let g:coc_user_config.languageserver.lua = {
    \ "command": s:lua_lsp_home . "/bin/Linux/lua-language-server",
    \ "args": ["-E", "-e", "LANG=en", s:lua_lsp_home . "/main.lua"],
    \ "filetypes": ["lua"],
    \ "rootPatterns": [".git/"],
    \ "Settings": {
        \ "Lua": {
            \ "workspace": {
                \ "library": {}
                \}
            \}
        \}
   \}

