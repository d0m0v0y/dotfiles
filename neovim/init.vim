" ======================================================================================================================
" 1.0 Plugin manager (Plug) settings
" ======================================================================================================================
"{{{

" Autoinstall {{{
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
" }}}
call plug#begin('~/.config/nvim/plugged')

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.1 Plugin list
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" ---------------------------------------------------------------------------------------------------------------------
" Language agnostic plugins {{{
" ---------------------------------------------------------------------------------------------------------------------

" Asynchronous maker and linter (needs linters to work)
Plug 'benekastah/neomake', { 'on': ['Neomake'] }
" Autocomplete
" function! DoRemote(arg)
"   UpdateRemotePlugins
" endfunction
" Plug 'Shougo/deoplete.nvim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
" Automatically closing pair stuff
Plug 'cohama/lexima.vim'
" Snippet support (C-j)
Plug 'SirVer/ultisnips'
" Commenting support (gc)
Plug 'tpope/vim-commentary'
" CamelCase and snake_case motions
Plug 'bkad/CamelCaseMotion'
" Heuristically set indent settings
Plug 'tpope/vim-sleuth'
" Syntax checking hacks for vim
Plug 'scrooloose/syntastic'
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" Ruby/Rails {{{
" ---------------------------------------------------------------------------------------------------------------------

" Ruby support (plays nicely with tpope/rbenv-ctags)
Plug 'vim-ruby/vim-ruby'
" Slim syntax
Plug 'slim-template/vim-slim'
" Haml syntax
Plug 'tpope/vim-haml'
" Minitest syntax
" Plug 'sunaku/vim-ruby-minitest'
" Rails support (:A, :R, :Rmigration, :Rextract)
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'slim'] }
" Bundler support (plays nicely with tpope/gem-ctags)
Plug 'tpope/vim-bundler', { 'for': ['ruby', 'eruby', 'haml', 'slim'] }
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" JS (ES6, React) {{{
" ---------------------------------------------------------------------------------------------------------------------

" JS basic support (indent, etc.)
Plug 'pangloss/vim-javascript'
" JS syntax (keywords, DOM, etc.)
Plug 'jelera/vim-javascript-syntax'
" JSX syntax
Plug 'mxw/vim-jsx'
" Typescript syntax
Plug 'leafgarland/typescript-vim'
" JSON syntax
Plug 'sheerun/vim-json'
" Mustache
Plug 'mustache/vim-mustache-handlebars'
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" HTML/CSS {{{
" ---------------------------------------------------------------------------------------------------------------------

" HTML5 syntax
Plug 'othree/html5.vim'
" SCSS syntax
Plug 'cakebaker/scss-syntax.vim'
" Color highlighter
Plug 'lilydjwg/colorizer', { 'for': ['css', 'sass', 'scss', 'less', 'html', 'xhtml', 'javascript', 'javascript.jsx'] }
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" Other languages {{{
" ---------------------------------------------------------------------------------------------------------------------

" Elixir syntax
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir', 'eelixir'] }
Plug 'slashmili/alchemist.vim', { 'for': ['elixir', 'eelixir'] }
" Plug 'awetzel/elixir.nvim'
Plug 'larrylv/ycm-elixir'
" Elm support
Plug 'ElmCast/elm-vim'
" Yaml indentation
Plug 'martin-svk/vim-yaml'
" Markdown syntax
Plug 'tpope/vim-markdown'
" Git syntax
Plug 'tpope/vim-git'
" Tmux syntax
Plug 'tejr/vim-tmux'
" Dockerfile
Plug 'honza/dockerfile.vim'
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" Unite fuzzy searcher {{{
" ---------------------------------------------------------------------------------------------------------------------
" vimproc
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Unite files, buffers, etc. sources
Plug 'Shougo/unite.vim'
" Outline source
Plug 'Shougo/unite-outline'
" History/yank source
" Plug 'Shougo/neoyank.vim'
" MRU source
Plug 'Shougo/neomru.vim'
" Tag source
Plug 'tsukkee/unite-tag'
" Ag wrapper (Unite grep alternative) search and edit
Plug 'dyng/ctrlsf.vim', { 'on': ['CtrlSF', 'CtrlSFToggle'] }
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" Interface improving {{{
" ---------------------------------------------------------------------------------------------------------------------

" Nerdtree file browser
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeToggle'] }
" Lightline (simple status line)
Plug 'itchyny/lightline.vim'
" Buffers tabline
Plug 'ap/vim-buftabline'
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" External tools integration plugins {{{
" ---------------------------------------------------------------------------------------------------------------------

" Fugitive
Plug 'tpope/vim-fugitive'
" Git log viewer (Gitv! for file mode)
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
" Git changes showed on line numbers
Plug 'airblade/vim-gitgutter'
" REST Console
" Plug 'diepm/vim-rest-console', { 'for': 'rest' }
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" Text insertion/manipulation {{{
" ---------------------------------------------------------------------------------------------------------------------

" Highlight jump characters on f, F, t, T
Plug 'unblevable/quick-scope'
" Surround (cs"')
Plug 'tpope/vim-surround'
" Easy alignment
Plug 'godlygeek/tabular', { 'on':  'Tabularize' }
" Safely editing in isolation
" Plug 'ferranpm/vim-isolate', { 'on':  ['Isolate', 'UnIsolate'] }
" Cycling related words via C-a C-x (i.e. true/false)
" Plug 'zef/vim-cycle'
" Titlecase motion (gt)
Plug 'christoomey/vim-titlecase'
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" Extra text objects {{{
" ---------------------------------------------------------------------------------------------------------------------

" Custom text objects creation (dependency for the latter)
Plug 'kana/vim-textobj-user'
" Argument text object (via, >a)
Plug 'PeterRincker/vim-argumentative'
" Indent text object (vii)
" Plug 'kana/vim-textobj-indent'
" Line text object (vil)
" Plug 'kana/vim-textobj-line'
" Entire buffer text object (vae)
" Plug 'kana/vim-textobj-entire'
" Ruby block text object (vir)
Plug 'nelstrom/vim-textobj-rubyblock'
" Comment text object (vac)
" Plug 'glts/vim-textobj-comment'
" Improved targets line cin) next parens
" Plug 'wellle/targets.vim'
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" Colorschemes {{{
" ---------------------------------------------------------------------------------------------------------------------
" Solarized
Plug 'altercation/vim-colors-solarized'
" Hybrid
Plug 'w0ng/vim-hybrid'
" Jellybeans
Plug 'nanotech/jellybeans.vim'
" Badwolf
Plug 'sjl/badwolf'
" Molokai
Plug 'tomasr/molokai'
" Gruvbox
Plug 'morhetz/gruvbox'
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" Other {{{
" ---------------------------------------------------------------------------------------------------------------------

" Easily expand selected region
" Plug 'terryma/vim-expand-region'
" Search for highlighted word with *
Plug 'thinca/vim-visualstar'
" Improve star by not jumping immediately
Plug 'ironhouzi/vim-stim'
" Intelligent buffer closing
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
" Iabbrev auto-correction library
" Plug 'chip/vim-fat-finger'
" Matchit enhances jump motions
Plug 'edsono/vim-matchit'
" More . repeat functionality
Plug 'tpope/vim-repeat'
" Delete all but current buffer
Plug 'vim-scripts/BufOnly.vim', { 'on': 'Bonly' }
" Populate arglist with buffers in quickfix list
" Plug 'nelstrom/vim-qargs', { 'on': 'Qargs' }
"}}}

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.2 End of plugin declaration
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call plug#end()
"}}}

" ======================================================================================================================
" 2.0 Basic settings (Neovim defaults: https://neovim.io/doc/user/vim_diff.html#nvim-option-defaults) {{{
" ======================================================================================================================
"{{{

set shell=/bin/zsh                          " Setting shell to zsh
set number                                  " Line numbers on
set showmode                                " Always show mode
set showcmd                                 " Show commands as you type them
set textwidth=120                           " Text width is 120 characters
set cmdheight=1                             " Command line height
set pumheight=10                            " Completion window max size
set noswapfile                              " New buffers will be loaded without creating a swapfile
set hidden                                  " Enables to switch between unsaved buffers and keep undo history
set clipboard+=unnamed                      " Allow to use system clipboard
set lazyredraw                              " Don't redraw while executing macros (better performance)
set showmatch                               " Show matching brackets when text indicator is over them
set matchtime=2                             " How many tenths of a second to blink when matching brackets
set nostartofline                           " Prevent cursor from moving to beginning of line when switching buffers
set virtualedit=block                       " To be able to select past EOL in visual block mode
set nojoinspaces                            " No extra space when joining a line which ends with . ? !
set scrolloff=5                             " Scroll when closing to top or bottom of the screen
set updatetime=1000                         " Update time used to create swap file or other things
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" 2.1 Split settings (more natural) {{{
" ---------------------------------------------------------------------------------------------------------------------
set splitbelow                              " Splitting a window will put the new window below the current
set splitright                              " Splitting a window will put the new window right of the current
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" 2.2 Timeout settings {{{
" ---------------------------------------------------------------------------------------------------------------------
" Time out on key codes but not mappings. Basically this makes terminal Vim work sanely. (by Steve Losh)
set notimeout
set ttimeout
set ttimeoutlen=10
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" 2.3 Spelling settings {{{
" ---------------------------------------------------------------------------------------------------------------------
" set spellfile=~/.config/nvim/dictionary.utf-8.add
" set spelllang=en_us                         " Set language to US English
" set nospell                                 " Disable checking by default (use <F4> to toggle)
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" 2.4 Search settings {{{
" ---------------------------------------------------------------------------------------------------------------------
set ignorecase                              " Ignore case by default
set smartcase                               " Make search case sensitive only if it contains uppercase letters
set wrapscan                                " Search again from top when reached the bottom
set nohlsearch                              " Don't highlight after search
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" 2.5 Persistent undo settings {{{
" ---------------------------------------------------------------------------------------------------------------------
if has('persistent_undo')
  set undofile
  set undodir=~/.config/nvim/tmp/undo//
endif
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" 2.6 White characters settings {{{
" ---------------------------------------------------------------------------------------------------------------------
" set list                                    " Show listchars by default
" set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:·
" set showbreak=↪
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" 2.7 Filetype settings {{{
" ---------------------------------------------------------------------------------------------------------------------
filetype plugin on
filetype indent on
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" 2.8 Folding settings {{{
" ---------------------------------------------------------------------------------------------------------------------
" set foldmethod=marker                       " Markers are used to specify folds.
" set foldlevel=2                             " Start folding automatically from level 2
" set fillchars="fold: "                      " Characters to fill the statuslines and vertical separators
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" 2.9 Omni completion settings {{{
" ---------------------------------------------------------------------------------------------------------------------
set completeopt-=preview                    " Don't show preview scratch buffers
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=tmp/**
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" 2.10 Neovim specific settings {{{
" ---------------------------------------------------------------------------------------------------------------------
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1       " Set an environment variable to use the t_SI/t_EI hack
let $NVIM_TUI_ENABLE_TRUE_COLOR=1       " Turn on true colors support (does not work inside tmux yet)
"}}}

" -----------------------------------------------------
" 2.11 Ctags settings {{{
" -----------------------------------------------------
" For Ruby STD ctags use tpope/rbenv-ctags + vim-ruby
" For gem ctags use tpope/gem-ctags + vim-bundler
" -----------------------------------------------------
"}}}


" ---------------------------------------------------------------------------------------------------------------------
" 2.12 syntastic settings {{{
" ---------------------------------------------------------------------------------------------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" }}}
"}}}

" ======================================================================================================================
" 3.0 Mapping settings
" ======================================================================================================================
"{{{

" -----------------------------------------------------
" 3.1 Setting leader {{{
" -----------------------------------------------------
let g:mapleader="\<space>"
"}}}

" -----------------------------------------------------
" 3.2 Disabling arrow keys, space key, exmode enter {{{
" with Q key, help with F1, etc.
" -----------------------------------------------------
" nnoremap <up> <NOP>
" nnoremap <down> <NOP>
" nnoremap <left> <NOP>
" nnoremap <right> <NOP>
nnoremap <bs> <NOP>
nnoremap <delete> <NOP>
" inoremap <up> <NOP>
" inoremap <down> <NOP>
" inoremap <left> <NOP>
" inoremap <right> <NOP>
nnoremap <Space> <NOP>
" inoremap <F1> <NOP>
" nnoremap <F1> <NOP>
" nnoremap Q <NOP>
"}}}

" -----------------------------------------------------
" 3.3 Vim defaults overriding {{{
" -----------------------------------------------------

" Easier window switching
" nmap <silent> <C-w><C-w> :call utils#intelligentCycling()<CR>
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" Visual linewise up and down by default (and use gj gk to go quicker)
nnoremap j gj
nnoremap k gk
nnoremap gj 5j
nnoremap gk 5k
vnoremap j gj
vnoremap k gk
vnoremap gj 5j
vnoremap gk 5k

" When jump to next match also center screen
nnoremap n nzz
nnoremap N Nzz
vnoremap n nzz
vnoremap N Nzz

" Same when moving up and down
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz
vnoremap <C-u> <C-u>zz
vnoremap <C-d> <C-d>zz
vnoremap <C-f> <C-f>zz
vnoremap <C-b> <C-b>zz

" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

" Remap J and K (pageUp and pageDown)
nnoremap J <C-f>zz
nnoremap K <C-b>zz

" More logical Y (default was alias for yy)
" nnoremap Y y$

" Quick replay 'q' macro
" nnoremap Q @q

" Don't yank to default register when changing something
nnoremap c "xc
xnoremap c "xc

" After block yank and paste, move cursor to the end of operated text and don't override register
" vnoremap y y`]
" vnoremap p "_dP`]
" nnoremap p p`]

" Use CamelCaseMotion instead of default motions
" map <silent> w <Plug>CamelCaseMotion_w
" map <silent> b <Plug>CamelCaseMotion_b
" map <silent> e <Plug>CamelCaseMotion_e
" map <silent> ge <Plug>CamelCaseMotion_ge
" sunmap w
" sunmap b
" sunmap e
" sunmap ge

" Fix the cw at the end of line bug default vim has special treatment (:help cw)
nmap cw ce
nmap dw de

" Uppercase word in insert mode
" inoremap <C-u> <ESC>mzgUiw`za

" Matching brackets with TAB (using matchit) (Breaks the <C-i> jump)
" map <TAB> %
" silent! unmap [%
" silent! unmap ]%

" Don't cancel visual select when shifting
xnoremap <  <gv
xnoremap >  >gv

" Terminal mode mappings
if has('nvim')
  tnoremap <ESC> <C-\><C-n>
  tnoremap ,<ESC> <ESC>
endif

" Stay down after creating fold
" vnoremap zf mzzf`zzz
"}}}

" -----------------------------------------------------
" 3.4 Common tasks {{{
" -----------------------------------------------------

" Quick save and close buffer
nnoremap <leader>w :w<CR>
" nnoremap <silent> ,c :Sayonara!<CR>
" nnoremap <silent> ,q :Sayonara<CR>
nnoremap <leader>q :Sayonara<CR>

" Yank and paste from clipboard
nnoremap ,y "+y
vnoremap ,y "+y
nnoremap ,yy "+yy
nnoremap ,p "+p

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" CTags generation / navigation (:tselect to select from menu)
nnoremap ]t :tn<CR>
nnoremap [t :tp<CR>
nnoremap ,ts :ts<CR>
nnoremap ,tg :GTags<CR>
" nnoremap <leader>] <C-]>

" QuickFix navigation
nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>

" Location list navigation
nnoremap ]l :lnext<CR>
nnoremap [l :lprevious<CR>

" Error mnemonic (Neomake uses location list)
nnoremap ]e :lnext<CR>
nnoremap [e :lprevious<CR>

" Reselect last-pasted text
" nnoremap gp `[v`]

" Keep the cursor in place while joining lines
" nnoremap J mzJ`z

" [S]plit line (sister to [J]oin lines) S is covered by cc.
" nnoremap S mzi<CR><ESC>`z

" Easier fold toggling
" nnoremap ,z za

" Start substitute on current word under the cursor
" nnoremap ,s :%s///gc<Left><Left><Left>

" Start search on current word under the cursor
nnoremap ,/ /<CR>

" Start reverse search on current word under the cursor
nnoremap ,? ?<CR>

" Faster sort
" vnoremap ,s :!sort<CR>
"}}}

" -----------------------------------------------------
" 3.5 F-key actions {{{
" -----------------------------------------------------

" Free
" nnoremap <silent> <F2>
" Paste mode toggling
" nnoremap <silent> <F3> :set paste!<CR> :set paste?<CR>
" Toggle spelling on and off
" nnoremap <silent> <F4> :set spell!<CR> :set spell?<CR>
" Source (reload configuration)
nnoremap <silent> <F5> :source $MYNVIMRC<CR>
" Toggle search highlight
nnoremap <silent> <F6> :set nohlsearch!<CR> :set nohlsearch?<CR>
" Toggle white characters visibility
nnoremap <silent> <F7> :set list!<CR> :set list?<CR>
" New horizontal term buffer
" nnoremap <silent> <F8> :T ls<CR>
" Fire REST Request
" nnoremap <silent> <F9> :call VrcQuery()<CR>
" Free
" nnoremap <silent> <F10>
" Howdoi integration (pip install howdoi)
" nnoremap <silent> <F11> :call utils#howDoI()<CR>
" Echo out toggles legend on <F12>
" nnoremap <F12> :call utils#showToggles()<CR>
"}}}

" -----------------------------------------------------
" 3.6 Window / Buffer management {{{
" -----------------------------------------------------

" Intelligent windows resizing using ctrl + arrow keys
" nnoremap <silent> <C-Right> :call utils#intelligentVerticalResize('right')<CR>
" nnoremap <silent> <C-Left> :call utils#intelligentVerticalResize('left')<CR>
nnoremap <silent> <C-Up> :resize +1<CR>
nnoremap <silent> <C-Down> :resize -1<CR>

" Buffers navigation and management
nnoremap <silent> + :bn<CR>
nnoremap <silent> _ :bp<CR>
" nnoremap <silent> > :bn<CR>
" nnoremap <silent> < :bp<CR>
"}}}

" -----------------------------------------------------
" 3.7 Command abbreviations and mappings {{{
" -----------------------------------------------------

" Quiting and saving all
cnoremap ww wqall
cnoremap qq qall
"}}}

" -----------------------------------------------------
" 3.8 Custom commands and functions {{{
" -----------------------------------------------------

" Generate tags definitions
" command! GTags :call utils#generateCtags()

" Open notes
" command! Notes :call utils#openNotes()

" Run current file
" command! Run :call utils#runCurrentFile()
" nnoremap <silent> ,r :Run<CR>

" Reformat whole or selection from file
" command! Format :call utils#formatFile()
" nnoremap <silent> ,f :Format<CR>

" Annotate file (show values in special # => comments)
" command! Annotate :call utils#annotateFile()
" nnoremap <silent> ,a :Annotate<CR>

" Profile
" command! Profile :call utils#profile()

" Retab
" command! Retab :call utils#retabToFourSpaces()
"}}}

"}}}

" ======================================================================================================================
" 4.0 Plugins settings
" ======================================================================================================================
"{{{

" -----------------------------------------------------
" 4.1 Auto-switch sk -> en keyboard layouts {{{
" -----------------------------------------------------
let g:utils_autoswitch_kb_layout=0
"}}}

" -----------------------------------------------------
" 4.2 Unite {{{
" -----------------------------------------------------

" Matcher settings
call unite#filters#matcher_default#use(['matcher_fuzzy', 'matcher_hide_current_file'])
call unite#filters#sorter_default#use(['sorter_rank'])

" Use ag if available
if executable('ag')
  let g:unite_source_grep_command='ag'
  let g:unite_source_grep_default_opts='--nocolor --line-numbers --nogroup -S -C0'
        \ . " --exclude='*.svn*'"
        \ . " --exclude='*.svn*'"
        \ . " --exclude='*.log*'"
        \ . " --exclude='*tmp*'"
        \ . " --exclude-dir='**/tmp'"
        \ . " --exclude-dir='CVS'"
        \ . " --exclude-dir='.svn'"
        \ . " --exclude-dir='.git'"
        \ . " --exclude-dir='node_modules'"
  let g:unite_source_grep_recursive_opt=''

  " Set rec source command
  let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
endif

" Custom profile
call unite#custom#profile('default', 'context', {
      \   'prompt': '» ',
      \   'winheight': 15,
      \ })

" Add syntax highlighting
let g:unite_source_line_enable_highlight=1

" Dont override status line
let g:unite_force_overwrite_statusline=0

" Custom unite menus
let g:unite_source_menu_menus = {}

" Tag source settings
let g:unite_source_tag_max_name_length=40
let g:unite_source_tag_max_fname_length=50
"}}}

" -----------------------------------------------------
" 4.3 NERDTree {{{
" -----------------------------------------------------
" let g:NERDTreeMinimalUI=1
" let g:NERDTreeWinSize=50
" let g:NERDTreeAutoDeleteBuffer=1
" let g:NERDTreeShowHidden=1
" let g:NERDTreeHighlightCursorline=0
" let g:NERDTreeRespectWildIgnore=1
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>m :NERDTreeFind<CR>
"}}}

" -----------------------------------------------------
" 4.4 Ultisnips settings {{{
" -----------------------------------------------------
let g:UltiSnipsUsePythonVersion=3
"}}}

" -----------------------------------------------------
" 4.5 Gitgutter settings {{{
" -----------------------------------------------------
let g:gitgutter_map_keys=0
let g:gitgutter_max_signs=9999
let g:gitgutter_sign_added='+'
let g:gitgutter_sign_modified='~'
let g:gitgutter_sign_removed='-'
let g:gitgutter_sign_modified_removed='~'
let g:gitgutter_sign_removed_first_line='-'
"}}}

" -----------------------------------------------------
" 4.6 Vim JSX highlighting settings {{{
" -----------------------------------------------------
" let g:jsx_ext_required=0
"}}}

" -----------------------------------------------------
" 4.7 Lightline settings {{{
" -----------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'component_function': {
      \   'filename': 'LightLineFilename'
      \ },
      \ }

function! LightLineModified()
  return &ft =~ 'help\|vimfiler' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &ft !~? 'help\|vimfiler' && &readonly ? '⭤' : ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:f') ? expand('%:f') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction
"}}}

" -----------------------------------------------------
" 4.8 Neomake settings {{{
" -----------------------------------------------------
let g:neomake_verbose=0
let g:neomake_warning_sign = {
      \ 'text': '❯',
      \ 'texthl': 'WarningMsg',
      \ }
let g:neomake_error_sign = {
      \ 'text': '❯',
      \ 'texthl': 'ErrorMsg',
      \ }
"}}}

" -----------------------------------------------------
" 4.9 Ruby refactoring settings {{{
" -----------------------------------------------------
let g:ruby_refactoring_map_keys=0
"}}}

" -----------------------------------------------------
" 4.10 Clever F settings {{{
" -----------------------------------------------------
let g:clever_f_across_no_line=1
let g:clever_f_smart_case=1
let g:clever_f_show_prompt=1
let g:clever_f_chars_match_any_signs=';'
"}}}

" -----------------------------------------------------
" 4.11 Vim Markdown settings {{{
" -----------------------------------------------------
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_folding_disabled=1
"}}}

" -----------------------------------------------------
" 4.12 Vim REST console settings {{{
" -----------------------------------------------------
let g:vrc_set_default_mapping=0
let g:vrc_output_buffer_name='__RESPONSE__.rest'
"}}}

" -----------------------------------------------------
" 4.13 Quick scope settings {{{
" -----------------------------------------------------
let g:qs_highlight_on_keys=['f', 'F', 't', 'T']
"}}}

" -----------------------------------------------------
" 4.14 Deoplete autocomplete settings {{{
" -----------------------------------------------------
" let g:deoplete#enable_at_startup=1
" let g:deoplete#enable_refresh_always=1
" let g:deoplete#file#enable_buffer_path=1

" let g:deoplete#sources={}
" let g:deoplete#sources._    = ['buffer', 'file', 'omni', 'ultisnips']
" let g:deoplete#sources.ruby = ['buffer', 'member', 'file', 'ultisnips']
" let g:deoplete#sources.vim  = ['buffer', 'member', 'file', 'ultisnips']
" let g:deoplete#sources['javascript.jsx'] = ['buffer', 'member', 'file', 'ultisnips']
" let g:deoplete#sources.css  = ['buffer', 'member', 'file', 'omni', 'ultisnips']
" let g:deoplete#sources.scss = ['buffer', 'member', 'file', 'omni', 'ultisnips']
" let g:deoplete#sources.html = ['buffer', 'member', 'file', 'omni', 'ultisnips']
" let g:deoplete#sources.elixir = ['omni']
"}}}

" -----------------------------------------------------
" 4.15 Ctrl-SF settings {{{
" -----------------------------------------------------
let g:ctrlsf_default_root='project'
let g:ctrlsf_populate_qflist=1
let g:ctrlsf_position='bottom'
let g:ctrlsf_winsize = '30%'
let g:ctrlsf_auto_close=0
let g:ctrlsf_regex_pattern=1
"}}}

" -----------------------------------------------------
" 4.16 Plug settings {{{
" -----------------------------------------------------
let g:plug_timeout=20
"}}}

" -----------------------------------------------------
" 4.17 Vim-markdown settings {{{
" -----------------------------------------------------
let g:markdown_fenced_languages=[
      \'bash=sh',
      \'git=gitconfig',
      \'javascript',
      \'lua',
      \'ruby',
      \'tmux',
      \'viml=vim',
      \'xdefaults',
      \'zsh']
"}}}

" -----------------------------------------------------
" 4.18 Colorizer settings {{{
" -----------------------------------------------------
let g:colorizer_nomap=1
"}}}

" -----------------------------------------------------
" 4.19 Elm-vim settings {{{
" -----------------------------------------------------
let g:elm_format_autosave=0
let g:elm_setup_keybindings=0
"}}}

"}}}

" ======================================================================================================================
" 5.0 Plugin mappings
" ======================================================================================================================
"{{{
" -----------------------------------------------------
" 5.1 Unite and extensions {{{
" -----------------------------------------------------

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Enable navigation with control-j and control-k in insert mode
  imap <silent> <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <silent> <buffer> <C-k> <Plug>(unite_select_previous_line)
  " Runs 'splits' action by <C-s> and <C-v>
  imap <silent> <buffer> <expr> <C-s> unite#do_action('split')
  imap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
  " Exit with escape
  nmap <silent> <buffer> <ESC> <Plug>(unite_exit)
  " Mark candidates
  vmap <silent> <buffer> m <Plug>(unite_toggle_mark_selected_candidates)
  nmap <silent> <buffer> m <Plug>(unite_toggle_mark_current_candidate)
endfunction

" nnoremap <leader>o :<C-U>Unite -no-split -buffer-name=files -start-insert file_rec/neovim<CR>
nnoremap <leader>t :<C-U>Unite -no-split -buffer-name=files -start-insert file_rec/neovim<CR>
nnoremap <leader>gg :<C-U>Unite -no-split -buffer-name=files -start-insert file_rec/git<CR>
nnoremap <leader>p :<C-U>Unite -no-split -buffer-name=files -start-insert file_rec<CR>
nnoremap <leader>b :<C-U>Unite -quick-match -no-split -buffer-name=buffer buffer<CR>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru -start-insert file_mru<cr>
nnoremap <leader>l :<C-u>Unite -buffer-name=outline -start-insert outline<cr>


" Search in ultisnips [s]nippets
" nnoremap <silent> <leader>s :call utils#uniteSnippets()<CR>
"}}}

" -----------------------------------------------------
" 5.2 Ultisnips {{{
" -----------------------------------------------------
" Disable built-in cx-ck to be able to go backward
inoremap <C-x><C-k> <NOP>
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsListSnippets='<C-l>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'
"}}}

" -----------------------------------------------------
" 5.3 Isolate {{{
" -----------------------------------------------------
" vnoremap ,i :Isolate<CR>
" nnoremap ,u :UnIsolate<CR>
"}}}

" -----------------------------------------------------
" 5.4 Gitgutter {{{
" -----------------------------------------------------
nnoremap [h :GitGutterPrevHunk<CR>
nnoremap ]h :GitGutterNextHunk<CR>
nnoremap <Leader>hs :GitGutterStageHunk<CR>
nnoremap <Leader>hr :GitGutterUndoHunk<CR>
nmap <Leader>hp <Plug>GitGutterPreviewHunk
"}}}

" -----------------------------------------------------
" 5.5 Expand region {{{
" -----------------------------------------------------
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
"}}}

" -----------------------------------------------------
" 5.6 Vim Markdown {{{
" -----------------------------------------------------
" nmap [[ <Plug>Markdown_MoveToPreviousHeader
" nmap ]] <Plug>Markdown_MoveToNextHeader
"}}}

" -----------------------------------------------------
" 5.7 Argumentative (use a instead of ,) {{{
" -----------------------------------------------------
" xmap ia <Plug>Argumentative_InnerTextObject
" xmap aa <Plug>Argumentative_OuterTextObject
" omap ia <Plug>Argumentative_OpPendingInnerTextObject
" omap aa <Plug>Argumentative_OpPendingOuterTextObject
" nmap [a <Plug>Argumentative_Prev
" nmap ]a <Plug>Argumentative_Next
" xmap [a <Plug>Argumentative_XPrev
" xmap ]a <Plug>Argumentative_XNext
" nmap <a <Plug>Argumentative_MoveLeft
" nmap >a <Plug>Argumentative_MoveRight
"}}}

" -----------------------------------------------------
" 5.8 Deoplete autocomplete {{{
" -----------------------------------------------------
" Insert <TAB> or select next match
" inoremap <silent> <expr> <Tab> utils#tabComplete()

" Manually trigger tag autocomplete
" inoremap <silent> <expr> <C-]> utils#manualTagComplete()

" <C-h>, <BS>: close popup and delete backword char
" inoremap <expr><C-h> deolete#mappings#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> deoplete#mappings#smart_close_popup()."\<C-h>"
"}}}

" -----------------------------------------------------
" 5.9 CtrlSF {{{
" -----------------------------------------------------
nnoremap <leader>ff :CtrlSF<Space>
nnoremap <leader>ft :CtrlSFToggle<CR>
" nnoremap <leader>ff <Plug>CtrlSFCwordPath
"}}}

" -----------------------------------------------------
" 5.10 Vim-Plug {{{
" -----------------------------------------------------
" nnoremap <leader>pi :PlugInstall<CR>
" nnoremap <leader>pu :PlugUpdate<CR>
" nnoremap <leader>pU :PlugUpgrade<CR>
" nnoremap <leader>pc :PlugClean<CR>
"}}}

" -----------------------------------------------------
" 5.11 Ctrl-SF {{{
" -----------------------------------------------------
let g:ctrlsf_mapping = {
      \ "next"    : "n",
      \ "prev"    : "N",
      \ "quit"    : "q",
      \ "openb"   : "",
      \ "split"   : "s",
      \ "tab"     : "",
      \ "tabb"    : "",
      \ "popen"   : "",
      \ "pquit"   : "",
      \ "loclist" : "",
      \ }

" nnoremap <silent> ,g :call utils#searchCurrentWordWithAg()<CR>
"}}}

" -----------------------------------------------------
" 5.12 Fugitive {{{
" -----------------------------------------------------
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit --verbose<CR>
" nnoremap <leader>gc :Gcommit --verbose<CR>
nnoremap <leader>gd :Gvdiff<CR>
"}}}

" -----------------------------------------------------
" 5.13 BufOnly {{{
" -----------------------------------------------------
"nnoremap ,C :Bonly<CR>
""}}}

" -----------------------------------------------------
" 5.14 Gitv {{{
" -----------------------------------------------------
nnoremap <leader>gv :Gitv!<CR>
"}}}

"}}}

" ======================================================================================================================
" 6.0 Color and highlighting settings
" ======================================================================================================================
"{{{
" Syntax highlighting {{{
syntax enable
"}}}

" Colorschemes
set background=dark
" set background=light
" colorscheme solarized
colorscheme gruvbox


" Color scheme based on time {{{
" if strftime("%H") < 15
"   colorscheme badwolf
" else
"   let g:rehash256=1
"   colorscheme molokai
" endif
"}}}

" Highlight VCS conflict markers {{{
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
"}}}

" Highlight term cursor differently {{{
highlight TermCursor ctermfg=green guifg=green
"}}}

" Listchars highlighting {{{
highlight NonText ctermfg=235 guifg=gray
highlight SpecialKey ctermfg=235 guifg=gray
"}}}

" Remove underline in folded lines {{{
" hi! Folded term=NONE cterm=NONE gui=NONE ctermbg=NONE
"}}}

" Link highlight groups to improve buftabline colors {{{
hi! link BufTabLineCurrent Identifier
hi! link BufTabLineActive Comment
hi! link BufTabLineHidden Comment
hi! link BufTabLineFill Comment
"}}}

"}}}

" ======================================================================================================================
" 7.0 Autocommands
" ======================================================================================================================
"{{{

" Keywordprg settings {{{
autocmd FileType vim setlocal keywordprg=:help
"}}}

" Turn spellcheck on for markdown files {{{
" autocmd BufNewFile,BufRead *.md setlocal spell
"}}}

" Remove trailing whitespaces automatically before save {{{
" autocmd BufWritePre * call utils#stripTrailingWhitespaces()
"}}}

" Resize splits when the window is resized {{{
autocmd VimResized * :wincmd =
"}}}

" Make sure Vim returns to the same line when you reopen a file. Thanks, Amit and Steve Losh. {{{
augroup line_return
  au!
  au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END
"}}}

" Keyboard layout switching {{{
" if g:utils_autoswitch_kb_layout == 1
"   autocmd InsertEnter * call utils#setSKKBLayout()
"   autocmd InsertLeave * call utils#setUSKBLayout()
" end
"}}}

" -----------------------------------------------------
" 7.1 Run linters after save {{{
" -----------------------------------------------------

" npm install -g eslint
" autocmd BufWritePost *.js Neomake eslint
" npm install -g jsonlint
" autocmd BufWritePost *.json Neomake jsonlint
" npm install -g typescript
" autocmd BufWritePost *.ts Neomake tsc
" gem install rubocop
" autocmd BufWritePost *.rb Neomake rubocop
" sudo apt-get install elixir
" autocmd BufWritePost *.ex Neomake elixir
" apt-get install tidy
" autocmd BufWritePost *.html Neomake tidy
" gem install haml_lint
" autocmd BufWritePost *.haml Neomake hamllint
" gem install scsslint
" autocmd BufWritePost *.scss Neomake scsslint
" gem install mdl
" autocmd BufWritePost *.md Neomake mdl
" apt-get install shellcheck
" autocmd BufWritePost *.sh Neomake shellcheck
" pip3 install vim-vint
" autocmd BufWritePost *.vim Neomake vint
"}}}

"}}}

" ======================================================================================================================
" 8.0 Todo, Notes
" ======================================================================================================================
"{{{

" -----------------------------------------------------
" 8.1 Todo {{{
" -----------------------------------------------------
" 1. Update README file.
"}}}

" -----------------------------------------------------
" 8.2 Notes {{{
" -----------------------------------------------------
"}}}

" -----------------------------------------------------
" 8.3 Custom settings {{{
" -----------------------------------------------------
set mouse=r
"}}}

"}}}
