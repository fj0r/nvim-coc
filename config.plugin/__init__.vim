" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
if executable('node')
    let s:coc_available = 1
endif
"
call plug#begin(g:nvim_home . '/plugged')

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'ompugao/vim-airline-datetime'
Plug 'itchyny/lightline.vim'
Plug 'niklaas/lightline-gitdiff'

Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/vim-terminal-help'

Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'Chiel92/vim-autoformat'
Plug 'mg979/vim-visual-multi'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tpope/vim-commentary'

"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'

Plug 'tpope/vim-fugitive'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'thaerkh/vim-workspace'

if g:nvim_preset == 'core'
  Plug 'Yggdroot/LeaderF'
else
  Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension'  }
endif

Plug 'puremourning/vimspector'

Plug 'johngrib/vim-game-snake'

if s:coc_available
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

call plug#end()

if s:coc_available
  let g:coc_data_home = resolve(expand(g:nvim_home.'/coc-data'))
  let g:coc_global_extensions = [
        \ 'coc-sh',
        \ 'coc-explorer',
        \ 'coc-snippets',
        \ 'coc-git',
		\ 'coc-calc',
		\ 'coc-bookmark',
        \ 'coc-tasks',
        \ 'coc-vimlsp',
        \ 'coc-emmet',
        \ 'coc-json',
        \ 'coc-yaml',
        \ 'coc-tsserver',
        \ 'coc-html',
        \ 'coc-css',
        \ 'coc-vetur',
        \ 'coc-reason',
        \ 'coc-pyright',
        \ 'coc-go',
        \ 'coc-sql',
        \ 'coc-rust-analyzer',
        \ 'coc-metals',
        \]

  let s:coc_conf_files = split(globpath(resolve(expand(g:nvim_home.'/config.coc')), '*.vim'), '\n')
  for fpath in s:coc_conf_files
    exe 'source' fpath
  endfor
endif
