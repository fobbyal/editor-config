"
""""""""""""""""""""
" Seetting a easy leader key
""""""""""""""""""
let mapleader = ',' 
let g:mapleader = ','
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" Plugin 'flazz/vim-colorschemes'
" Plugin 'trusktr/seti.vim'

" Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-capslock'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
" Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'maksimr/vim-jsbeautify'
" Plugin 'scrooloose/syntastic'
Plugin 'tikhomirov/vim-glsl'
" Plugin 'pangloss/vim-javascript'
"currently not using plsql with vim the compilation line support is just not there 
" Plugin 'talek/vorax4'
" jsx plugin
" Plugin 'mxw/vim-jsx'
Plugin 'rking/ag.vim'
Plugin 'Raimondi/delimitMate'
" Plugin 'Shougo/neomru.vim'
" Plugin 'Shougo/unite.vim'
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'Shougo/vimproc.vim'
" Plugin 'Shougo/neosnippet.vim'
" Plugin 'Shougo/neosnippet-snippets'
" Plugin 'ujihisa/unite-colorscheme'
Plugin 'tpope/vim-fugitive'
" Plugin 'tfnico/vim-gradle'
" Plugin 'fatih/vim-go'
" Plugin 'jonathanfilip/vim-lucius'
" Plugin 'dag/vim-fish'
" Plugin 'sjl/threesome.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-airline/vim-airline'
" Plugin 'ruanyl/vim-fixmyjs'
Plugin 'mhartington/oceanic-next'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-bufferline'
Plugin 'mbbill/undotree'
Plugin 'Yggdroot/LeaderF'
"Plugin 'ervandew/SuperTab'
"Plugin 'mxw/vim-jsx'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"sets how many lines of history VIM has to remember
set history=1000


syntax enable
set autoread
set autowriteall
set noswapfile
set nobackup
set number

set laststatus=2


"Height of the command bar
" set cmdheight=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set visualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
" set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set backspace=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto format 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"javascript simple mapping 
"map <c-f> :call JsBeautify()<cr>
"format for all files

autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"lint stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": [],
        \ "passive_filetypes": ["javascript"] }



"""""""""""""""""""""""""""
"" Setting time out to give more time for leader key combos
"""""""""""""""""""""""""""""""""""""
set timeout
set timeoutlen=1000
set ttimeoutlen=100

" associate sql with plsql syntax
au BufRead,BufNewFile *.sql setf=plsql

" ingored folders for ctrlp
" let g:ctrlp_custom_ignore = {
" 	\ 'dir':  '\v[\/](node_modules|bower_components|\.(git|hg|svn))$',
" 	\ 'file': '\v\.(exe|so|dll)$',
" 	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
" 	\ }

set t_Co=256
"no sound on error 


"Line numbers number
set number
autocmd BufEnter * :set relativenumber
autocmd BufLeave * :set norelativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

"Customized Key map
"caps lock
" map <c-m> :SyntasticToggleMode <cr>
"imap <C-u> <Plug>CapsLockToggle
"get out of edit mode
imap jk <esc>
imap kj <esc>
"to end a line 
imap EE <C-o>A;<esc> 
"nmap <Leader>l <Plug>CapsLockToggle
"faster navigation
" imap <C-h> <C-o>h
" imap <C-j> <C-o>j
" imap <C-k> <C-o>k
" imap <C-k> <esc>:hello
"imap <C-k> <Plug>(neosnippet_jump_or_expand)
" imap <C-l> <C-o>l
"faster grep tool
" nmap <Leader>g :vimgrep <C-R><C-W> .\**\*.* 
"faster saving

imap <C-s> <esc>:w<cr>
nmap <C-s> <esc>:w<cr>
nmap <Leader>n :NERDTree <cr>
"ag searcher
nmap <leader>a :Ag  
nmap <leader>A :Ag <C-R><C-W>
nmap ; :
nmap <C-p> :Unite buffer file_rec/git<cr>i
nmap <Space>s :w<cr> :SyntasticCheck<cr>
nmap <leader>f :Fixmyjs<cr> :w<cr> :SyntasticCheck<cr>
nmap <leader>s :w<cr>
" for word comletion

"""""""""""""""
"Faster editing
"""""""""""""""
"change word case
nmap <Leader>c viw~ 
"replace line
nmap <Leader>rl pk"_dd
"replace word
nmap <Leader>rw "_diwP
"paste register 0
nmap <Leader>p "0p
nmap <Leader>P "0P

let loaded_matchparen = 1
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
"Status line
" set statusline=%<%f\    " Filename
"set statusline+=%w%h%m%r " Options
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%{fugitive#statusline()}
" set statusline+=%*



" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"  move text and rehighlight -- vim tip_id=224 
vnoremap > ><CR>gv 
vnoremap < <<CR>gv 


"copy and paste toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"easymotion search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

"smart case easymotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1 " US layout

nmap <space>e <Plug>(easymotion-s2)

""""""""""""""""""""""""""""""""""
"dalimiate stuff
""""""""""""""""""""""""""""""""""
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1
let delimitMate_jump_expansion = 1


" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

if has("persistent_undo")
  set undodir=~/.vim-undo/
  set undofile
endif
nnoremap <F5> :UndotreeToggle<cr>
nnoremap <C-p> :Leaderf file<cr>
