set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'eagletmt/ghcmod-vim'
Plug 'Shougo/vimproc'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'


call vundle#end()

let g:airline#extensions#ale#enabled = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"diable header folding
let g:vim_markdown_folding_disabled = 1
"don't use conceal feature, the impkementation is not so good
let g:vim_markdown_conceal = 0
"disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1
"support front matter of various formats
let g:vim_markdown_frontmatter = 1 "for YAML format
let g:vim_markdown_toml_frontmatter = 1 "for TOML format
let g:vim_markdown_json_frontmatter = 1 "for JSON format

nnoremap <Leader>ht :GhcModType<cr>
nnoremap <Leader>htc :GhcModTypeClear<cr>

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

augroup pandoc_syntax
	au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

syntax on

:set number relativenumber

