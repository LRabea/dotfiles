call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', {'do': {-> mkdp#util#install()}}

call plug#end() 

"General Settings ---------------------------------------------------------
syntax on
set number

"deoplete settings --------------------------------------------------------
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave, CompleteDone * if pumvisible() == 0 | pclose | endif
set splitbelow
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"vim-airline --------------------------------------------------------------
let g:airline_theme='angr'

"Neoformat ----------------------------------------------------------------
"Enable alignment
let g:neoformat_basic_format_align = 1
"Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
"Enable trimming of trailing whitespace
let g:neoformat_basic_format_trim = 1

"Ultisnips ----------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
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

"vim-pancoc-syntax
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
