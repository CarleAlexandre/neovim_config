
call	plug#begin('~/.config/nvim/plugged')

Plug	'Xuyuanp/nerdtree-git-plugin'
Plug	'ryanoasis/vim-devicons'
Plug	'terryma/vim-multiple-cursors'
Plug    'sheerun/vim-polyglot'
Plug    'itchyny/lightline.vim'
Plug    'PhilRunninger/nerdtree-buffer-ops' 
Plug    'WolfgangMehner/vim-plugins'
Plug    'preservim/nerdtree'
Plug    'PhilRunninger/nerdtree-visual-selection'
Plug	'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug	'nvim-lua/plenary.nvim'
Plug	'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug	'mbbill/undotree'
Plug	'tpope/vim-fugitive'
Plug	'shinchu/lightline-gruvbox.vim'
Plug	'morhetz/gruvbox'
Plug    'neovim/nvim-lspconfig'
Plug    'xiyaowong/transparent.nvim'
Plug    'neovim/nvim-lspconfig'
Plug    'hrsh7th/cmp-nvim-lsp'
Plug    'hrsh7th/cmp-buffer'
Plug    'hrsh7th/cmp-path'
Plug    'hrsh7th/cmp-cmdline'
Plug    'hrsh7th/nvim-cmp'
Plug    'hrsh7th/vim-vsnip'
Plug    'hrsh7th/vim-vsnip-integ'
Plug    'nvim-lua/plenary.nvim'
Plug    'ThePrimeagen/harpoon'

call	plug#end()

lua require("fatmeat.init")



if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
    set termguicolors
endif

set	nocompatible
set	showmatch 
set clipboard=unnamedplus
set	ignorecase 
set	hlsearch 
set	shiftwidth=4
set	tabstop=4 
set	softtabstop=4
set	noexpandtab
"set	autoindent

set	rnu
set nu
set	wildmode=longest,list	" get bash-like ta completions
set	cc=80
syntax	on
"set	laststatus=2
set	noshowmode
set background=dark
set nowrap

function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
        " disable mouse
        set mouse=r
    elseif &mouse == 'r'
        " enable mouse everywhere
        set mouse=a
    endif
endfunc

function! ToggleBg()
    if &background == 'light'
        set background=dark
    elseif &background == 'dark'
        set background=light
    endif
endfunc

nnoremap <A-up> ddkkp
nnoremap <A-down> ddp
nnoremap <C-f> :UndotreeToggle<CR>
nnoremap <C-s> :w<CR>

nnoremap <SPACE>m :Man<SPACE>

function! NoIndent()
	setl noai nocin nosi inde=
endfunc

set mouse=a
"filetype plugin on
filetype	plugin indent off
set	cursorline
set	ttyfast
set	noswapfile
set backupdir=~/.cache/vim

let	g:gruvbox_contrast_light = 'medium'
let g:gruvbox_contrast_dark = 'light'


let g:lightline = { 'colorscheme': 'gruvbox', }

let g:lightline_gruvbox_style = 'medium'
let g:lightline_gruvbox_color = 'both'

autocmd vimenter * ++nested colorscheme gruvbox

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"autocmd BufNewFile * 0r ~/.config/nvim/templates/License

let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'

let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '/[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']


