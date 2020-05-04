call plug#begin('~/.local/share/nvim/plugged')

" Various Plug Ins ---------------------------------------------------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'dylanaraps/wal'
" Markdown ----------------------------------------------------------------
Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', {'do': {-> mkdp#util#install()}}
"LaTeX --------------------------------------------------------------------
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"Hasell -------------------------------------------------------------------
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
"Plug 'neovimhaskell/haskell-vim'
"Plug 'alx741/vim-hindent'
"Plug 'alx741/vim-stylishask'
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"   \}

call plug#end() 

"General Settings ---------------------------------------------------------
syntax on
set number
set showmode
set smartcase
set smarttab
set smartindent
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set background=dark
set laststatus=0
colorscheme wal

"vim-airline --------------------------------------------------------------
let g:airline_theme='angr'

" Nerdcommenter -----------------------------------------------------------
let g:NERDSpaceDeLims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

"Neoformat ----------------------------------------------------------------
"Enable alignment
let g:neoformat_basic_format_align = 1
"Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
"Enable trimming of trailing whitespace
let g:neoformat_basic_format_trim = 1

"Ultisnips ----------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"Distraction-free Writing (Goyo + Limelight) ------------------------------
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = 'gray'

"Markdown Syntax Highliting -----------------------------------------------
"disable header folding
let g:vim_markdown_folding_disabled = 1
"disable conceal feature (Implementation is not good)
let g:vim_markdown_conceal = 0
"disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1
"support front matter of various formats
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

"vim-pandoc-syntax
augroup pandoc_syntax
	au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END	

"Markdown preview ---------------------------------------------------------
"set to 1, nvimwill open preview window after entering markdown buffer
"default: 0
let g:mkdp_auto_start = 1
"set to 1, nvim will autoclose current preview window when change from md
"buffer to other buffer
"default: 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_browser = 'firefox'

"LaTeX --------------------------------------------------------------------
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:livepreview_previewer='open -a zathura'
let g:livepreview_engine='pdflatex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:neotex_enabled=2
autocmd Filetype tex setl updatetime=1
"Haskell -------------------------------------------------------------------
