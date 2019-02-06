"               /                        
" .  _  |_   _     _         .  _   _  _ 
" | (_) | ) | )   _)   .  \/ | ||| |  (_ 
" /                                      

call plug#begin('~/.vim/plugged')

" Code Helpers
  Plug 'tomtom/tcomment_vim'
  Plug 'mattn/emmet-vim'
" Syntax Highlighting and Code Pretty
  Plug 'PotatoesMaster/i3-vim-syntax'
  Plug 'vim-syntastic/syntastic'
  Plug 'godlygeek/tabular'
  Plug 'nathanaelkane/vim-indent-guides'

" Navigation and File
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" Color scheme
  Plug 'altercation/vim-colors-solarized'
  Plug 'nanotech/jellybeans.vim'
  Plug 'itchyny/lightline.vim'
" Plug 'sheerun/vim-polyglot.vim'
" Plug 'trevordmiller/nova-vim.vim'
" Syntax Highlighting
  Plug 'sheerun/vim-polyglot'

" Editor Config for Projects
  Plug 'editorconfig/editorconfig-vim'

" Javascript and react
  
  Plug 'Quramy/vim-js-pretty-template' " Pretty template strings

  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  " Check omniComplition settings for TS and make settings
  " see: https://github.com/Quramy/tsuquyomi
  Plug 'Quramy/tsuquyomi'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basics
	nnoremap Q <nop>                              " Disable Ex mode
  syntax on
  filetype on
  filetype indent on
  filetype plugin on
  set nocompatible                              " Welcome to 21st century
	set encoding=utf-8
  set viminfo^=!
  set visualbell                                " Blink instead of beep
  set listchars=tab:>.,trail:.,extends:#,nbsp:. " invisible characters
	set number relativenumber                     " Show relative numbers
	set splitbelow splitright                     " Split tabs right and bottom
  set history=256                               " Things to remember
  set autowrite                                 " writes on make/shell commands
  set timeoutlen=250                            " Time to wait after Esc
  set showmatch                                 " Show matching parantheses
  set laststatus=2                              " Always show status line
  set backspace=2
  set ruler
  set wildmode=longest,list,full                " Enable Autocomp. with tab

" indenting logic
	set nowrap
	set tabstop=2
	set shiftwidth=2
	set expandtab
	set smartindent
	set autoindent

" max width and coloring conventions
  highlight ColorColumn ctermbg=235 guibg=#232326
  let &colorcolumn="80,".join(range(120,999),",") 

let g:airline_theme='base16'


" Ignore the case when search pattern is all lowercase
	set smartcase
	set ignorecase

" Disable Autocommenting on a new line
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Block select not limited by shortest line
	set virtualedit=
	set wildmenu
	set laststatus=2
	set wrap linebreak nolist
	set wildmode=full

" Split Navigation remapped
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Automaticaly deletes all whitespaces on save
	autocmd BufWritePre * %s/\\+$//e

" Leader Key Settings & Mappings
	let mapleader = ','                             " Leader key to ','
  nmap <leader>l :set list!<CR>                   " Show Tabs
  nnoremap <leader>ev :vsplit $MYVIMRC<cr>        " Edit .vimrc
  nnoremap <leader>sv :source $MYVIMRC<cr>        " Source .vimrc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TCOMMENT MAPPINGS
" Leader c is the prefix for code related mapp?ngs 
  noremap <silent> <Leader>cc :TComment<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FUZZY FINDER MAPPINGS
" Leader F is for file related mapp?ngs (open, browse...)
  nnoremap <silent> <Leader>f :CtrlP<CR>
  nnoremap <silent> <Leader>fm :CtrlPMRU<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl B for buffer related mappings #b is Buffer
  nnoremap <silent> <Leader>b :CtrlPBuffer<CR>      " Cycle between #b
  nnoremap <silent> <Leader>bb :bn<CR>              " Create (N)ew #b
  nnoremap <silent> <Leader>bd :bdelete<CR>         " (D)elete the current #b
  nnoremap <silent> <Leader>bu :bunload<CR>         " (U)nload the current #b
  nnoremap <silent> <Leader>bl :setnomodifiable<CR> " (L)ock the current #b

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color scheme
  let g:solarized_contrast="high"                     " Vim-colors-solarized
  let g:indent_guides_enable_on_vim_startup = 1       " Enable Rainbow indent
  set background=dark
  colorscheme jellybeans

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline
  let g:lightline = { 'colorscheme': 'jellybeans', } " vim-lightline
  set laststatus=2                                   " vim-lightline
  set noshowmode

  if !has('gui_running')
    set t_Co=256
  endif

" Assuming vim Does not have python support
  let g:EditorConfig_core_mode = 'external_command'  "editorconfig-vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic Config for sxntax highlighttng
  set statusline+=%#warningmsg#                    " syntastic
  set statusline+=%{SyntasticStatuslineFlag()}     " syntastic
  set statusline+=%*                               " syntastic
  let g:syntastic_always_populate_loc_list = 1     " syntastic
  let g:syntastic_auto_loc_list = 1                " syntastic
  let g:syntastic_check_on_open = 1                " syntastic
  let g:syntastic_check_on_wq = 0                  " syntastic
  let g:syntastic_javascript_checkers = ['eslint'] " syntastic

" Syntax highlighting fix with = indent
  let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
" Pretty template Strings JS TS
  autocmd FileType typescript JsPreTmpl
  autocmd FileType typescript syn clear foldBraces 

" TSX Syntax Highlight
  " set filetypes as typescript.tsx
  " autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
  " autocmd BufNewFile,BufRead *.ts,*.tsx setlocal filetype=typescript
  autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.jsx
  autocmd BufNewFile,BufRead *.ts,*.js set filetype=typescript.jsx


" dark red
  hi tsxTagName guifg=#E06C75
" orange
  hi tsxCloseString guifg=#F99576
  hi tsxCloseTag guifg=#F99575
  hi tsxAttributeBraces guifg=#F99575
  hi tsxEqual guifg=#F99575
" yellow
  hi tsxAttrib guifg=#F8BD7F cterm=italic

  " hi ReactState guifg=#C176A7
  " hi ReactProps guifg=#D19A66
  " hi Events ctermfg=204 guifg=#56B6C2
  " hi ReduxKeywords ctermfg=204 guifg=#C678DD
  " hi WebBrowser ctermfg=204 guifg=#56B6C2
  " hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabularize
" ?,cee? will Tabularize the selected lines on ?=? sign 
" ?,cet? will Tabularize the selected lines on ?#? sign 
" ?:\zs? (try this on JSON)
  vnoremap <silent> <Leader>tee : Tabularize /=<CR>              "tabular
  vnoremap <silent> <Leader>tet : Tabularize /#<CR>              "tabular
  vnoremap <silent> <Leader>te  : Tabularize /

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSX Emmet
  let g:user_emmet_leader_key='<Tab>'
  let g:user_emmet_settings = {
    \  'javascript.jsx' : {
      \      'extends' : 'jsx',
    \  },
  \}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerd Tree
  map <C-n> :NERDTreeToggle<CR>         " Set Nerdtree toggle to ctrl + n
  let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "?",
    \ "Staged"    : "?",
    \ "Untracked" : "?",
    \ "Renamed"   : "?",
    \ "Unmerged"  : "?",
    \ "Deleted"   : "?",
    \ "Dirty"     : "?",
    \ "Clean"     : "??",
    \ "Unknown"   : "?"
    \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
