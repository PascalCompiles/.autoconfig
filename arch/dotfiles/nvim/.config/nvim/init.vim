"-----Standard Vim Configurations-----
syntax on
set ttyfast
set number
set ruler
filetype indent plugin on
set laststatus=2
set noshowmode
set hls is
set ignorecase
set autoindent
set clipboard+=unnamedplus
set paste
set backspace=indent,eol,start
set autoread
set visualbell
set wildmode=full
set wildmenu
set timeoutlen=1000 ttimeoutlen=0
let &undodir='/tmp'
set undofile
"-----Themeing-----
colorscheme elflord
set cursorline
set cursorcolumn
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
"TODO replace themeing with termguicolors
"set termguicolors
highlight Normal ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermfg=NONE ctermbg=NONE
hi LineNr ctermfg=239 ctermbg=235
hi LineNr ctermfg=188
"hi LineNr ctermfg=245
hi CursorLineNr ctermfg=245 ctermbg=235
"hi CursorLineNr ctermfg=188 ctermbg=DarkGray cterm=NONE
hi CursorLine cterm=NONE ctermbg=DarkGray
hi CursorColumn ctermbg=DarkGray
hi! EndOfBuffer cterm=NONE
hi QuickFixLine ctermbg=167 ctermfg=white
hi Visual ctermfg=NONE gui=reverse ctermbg=NONE
hi Visual term=reverse cterm=reverse gui=reverse guifg=Grey80 guibg=fg
hi Search ctermfg=black
"hi Comment ctermfg=223 cterm=italic gui=italic
hi Comment ctermfg=245 cterm=italic gui=italic
hi! Statement ctermfg=221
hi! Type ctermfg=177
hi Constant ctermfg=198
set list
set listchars=tab:\┆\ "

"-----Productivity Enhancing Snippets-----
set rulerformat=%15(%c%V\ %p%%%)
set tabstop=2
set shiftwidth=2
set expandtab
"for Python set tabs to 4
let g:python_recommended_style = 1

set previewheight=5

"-----Plugin related configurations-----
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'
let g:airline#extensions#ale#enabled = 1
let g:OmniSharp_highlight_types=3
set statusline+=%#warningmsg#
set statusline+=%*

"-----Custom Mappings-----
map <leader><space> :!mix test<CR>

"-----ALE specific plugin configurations-----
"
highlight ALEError ctermbg=none cterm=underline
highlight ALEErrorLine ctermfg=Blue
highlight ALEStyleErrorSignLineNr ctermbg=none cterm=underline
highlight ALEWarning ctermbg=none cterm=underline
let b:ale_warn_about_trailing_whitespace = 0
let g:ale_completion_enabled = 1
let g:ale_list_window_size = 20 
let g:jsx_ext_required = 1
"let g:ale_fixers = {
\   'javascript': ['eslint','rubocop'],
\ 'cs': ['OmniSharp']
"\}
"
let g:ale_linters = {
\   'python': ['pylint'],
\}
let g:OmniSharp_want_snippet=1

let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_path = $HOME . "/.omnisharp/run"
let g:OmniSharp_proc_debug= 0
let g:OmniSharp_loglevel = 'debug'
let g:UltiSnipsExpandTrigger="<tab>"
" IDE0010: Populate switch - display in ALE as `Info`
" IDE0055: Fix formatting - display in ALE as `Warning` style error
" CS8019: Duplicate of IDE0005
" RemoveUnnecessaryImportsFixable: Generic warning that an unused using exists
let g:OmniSharp_diagnostic_overrides = {
\ 'IDE0010': {'type': 'I'},
\ 'IDE0055': {'type': 'W', 'subtype': 'Style'},
\ 'CS8019': {'type': 'None'},
\ 'RemoveUnnecessaryImportsFixable': {'type': 'None'}
\}


