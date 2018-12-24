" AJ Gosling vimrc
" Colors {{{
execute pathogen#infect()
syntax enable           " enable syntax processing
set background=dark
colorscheme afterglow
set termguicolors
" }}}
" Misc {{{
set backspace=2
set backspace=indent,eol,start
let g:vimwiki_list = [{'path': '~/.wiki/'}]
set clipboard=unnamed
set number
set relativenumber

augroup linenumbers
  autocmd!
  autocmd BufEnter *    :set relativenumber
  autocmd BufLeave *    :set number norelativenumber
  autocmd WinEnter *    :set relativenumber
  autocmd WinLeave *    :set number norelativenumber
  autocmd FocusLost *   :set number norelativenumber
  autocmd FocusGained * :set relativenumber
augroup END
" }}}
" Spaces & Tabs {{{
set tabstop=2           " 2 space tab
set expandtab           " use spaces for tabs
set softtabstop=2      " 2 space tab
set shiftwidth=2
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
" Folding {{{
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}
" Line Shortcuts {{{
nnoremap B ^
nnoremap E $
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
map h <insert>
map i <Up>
map j <Left>
map k <Down>
ounmap i
ounmap h
" will remap backspace to backspace noremap <BS> xh

" }}}
" Leader Shortcuts {{{
let mapleader=","
inoremap jk <esc>
inoremap jl <esc>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>s :mksession<CR>
" }}}

" FZF FuzzyFind {{{
nnoremap P :Files<Cr> " File search
nnoremap O :Rg<Cr> " Ripgrep
" to change keybindings use in terminal: export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --bind I:up,K:down'
" }
" RipGrep silver searcher {{{
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
set grepprg=rg\ --vimgrep
" }

" Lightline {{{
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [['mode', 'paste'], ['filename', 'modified']],
\   'right': [['lineinfo'], ['readonly', 'filetype']]
\ }
\ }
" }}}

" NerdTree {{{
autocmd VimEnter * NERDTree " automatically open NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * wincmd p
" }}}

" RainbowParentheses {{{
let g:rainbow_active = 1
" }}}

" HTMLAutoCloseTags {{{
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx'
" }}}
" vim:foldmethod=marker:foldlevel=0

