" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
"
call plug#begin(g:nvim_plugged)

Plug 'chr4/nginx.vim'
"Plug 'keith/swift.vim'
if g:nvim_preset != 'core'
    Plug 'rescript-lang/vim-rescript'
endif

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'ompugao/vim-airline-datetime'
Plug 'itchyny/lightline.vim'
Plug 'niklaas/lightline-gitdiff'
"Plug 'mhinz/vim-startify'
Plug 'sainnhe/gruvbox-material'
Plug 't9md/vim-choosewin'

Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/vim-terminal-help'
"Plug 'kassio/neoterm'

"Plug 't9md/vim-smalls'
Plug 'justinmk/vim-sneak'
Plug 'chaoren/vim-wordmotion'
"Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi'

Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tpope/vim-commentary'

"Plug 'matze/vim-move'
Plug 'wellle/targets.vim'
"Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-swap'

"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'

Plug 'tpope/vim-fugitive'
"Plug 'mbbill/undotree'
Plug 'simnalamburt/vim-mundo'
"Plug 'jceb/vim-orgmode'
"Plug 'tpope/vim-speeddating'
Plug 'thaerkh/vim-workspace'

if executable('gcc')
  Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension'  }
else
  Plug 'Yggdroot/LeaderF'
endif

Plug 'puremourning/vimspector'

"Plug 'johngrib/vim-game-snake'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

if has('nvim-0.5')
  Plug 'neovim/nvim-lspconfig'
endif

call plug#end()

