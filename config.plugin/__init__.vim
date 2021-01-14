" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
"
call plug#begin(g:nvim_plugged)

Plug 'chr4/nginx.vim'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'ompugao/vim-airline-datetime'
Plug 'itchyny/lightline.vim'
Plug 'niklaas/lightline-gitdiff'
Plug 'mhinz/vim-startify'
Plug 'sainnhe/gruvbox-material'
Plug 't9md/vim-choosewin'

Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/vim-terminal-help'
"Plug 'kassio/neoterm'

Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'Chiel92/vim-autoformat'
Plug 'mg979/vim-visual-multi'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tpope/vim-commentary'

"Plug 'tpope/vim-surround'
"Plug 'matze/vim-move'
Plug 'wellle/targets.vim'
Plug 'machakann/vim-sandwich'
Plug 'machakann/vim-swap'

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

Plug 'neoclide/coc.nvim', {'branch': 'release'}

if has('nvim-0.5')
  Plug 'neovim/nvim-lspconfig'
endif

call plug#end()

