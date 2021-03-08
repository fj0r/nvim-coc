let g:coc_user_config.languageserver.rescript = {
	\ 'enable': g:nvim_preset != 'core',
	\ 'module': g:nvim_plugged . '/vim-rescript/rescript-vscode/extension/server/out/server.js',
    \ 'args': ['--node-ipc'],
    \ 'filetypes': ['rescript'],
	\ 'rootPatterns': ['bsconfig.json']
\ }

