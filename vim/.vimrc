" ------------------------------------------------------------
" Load plugins
" ------------------------------------------------------------

set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins will be downloaded under the specified directory.
call vundle#begin('~/.vim/plugged')

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'neoclide/coc.vim'
    Plugin 'neoclide/coc.vim', {'branch': 'release'}
    Plugin 'norcalli/nvim-colorizer.lua'
    Plugin 'tomasiser/vim-code-dark'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'yuezk/vim-js'
    Plugin 'maxmellon/vim-jsx-pretty'
    Plugin 'HerringtonDarkholme/yats.vim'
    Plugin 'vim-pandoc/vim-pandoc-syntax'
"{{ The Basics }}
    Plugin 'itchyny/lightline.vim'                       " Lightline statusbar
    Plugin 'suan/vim-instant-markdown', {'rtp': 'after'} " Markdown Preview
    Plugin 'frazrepo/vim-rainbow'
"{{ File management }}
    Plugin 'vifm/vifm.vim'                               " Vifm
    Plugin 'scrooloose/nerdtree'                         " Nerdtree
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
    Plugin 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
"{{ Productivity }}
    Plugin 'vimwiki/vimwiki'                             " VimWiki 
    Plugin 'jreybert/vimagit'                            " Magit-like plugin for vim
"{{ Tim Pope Plugins }}
    Plugin 'tpope/vim-surround'                          " Change surrounding marks
"{{ Syntax Highlighting and Colors }}
    Plugin 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting
    Plugin 'kovetskiy/sxhkd-vim'                         " sxhkd highlighting
    Plugin 'ap/vim-css-color'                            " Color previews for CSS
"{{ Junegunn Choi Plugins }}
    Plugin 'junegunn/goyo.vim'                           " Distraction-free viewing
    Plugin 'junegunn/limelight.vim'                      " Hyperfocus on a range
    Plugin 'junegunn/vim-emoji'                          " Vim needs emojis!

call vundle#end()
filetype plugin indent on



" ------------------------------------------------------------
" auto-pairs configuration
" ------------------------------------------------------------

let g:AutoPairsShortcutToggle = '<C-P>'


" ------------------------------------------------------------
" NERDTree configuration
" ------------------------------------------------------------

let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 0
let NERDTreeMinimalMenu = 1
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 31


" ------------------------------------------------------------
" tagbar configuration
" ------------------------------------------------------------

let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_position = 'botright vertical'


" ------------------------------------------------------------
" ctrlsf configuration
" ------------------------------------------------------------

let g:ctrlsf_backend = 'ack'
let g:ctrlsf_auto_close = { "normal": 0, "compact": 0 }
let g:ctrlsf_auto_focus = { "at": "start" }
let g:ctrlsf_auto_preview = 0
let g:ctrlsf_case_sensitive = 'smart'
let g:ctrlsf_default_view = 'normal'
let g:ctrlsf_regex_pattern = 0
let g:ctrlsf_position = 'right'
let g:ctrlsf_winsize = '46'
let g:ctrlsf_default_root = 'cwd'   " projcet


" ------------------------------------------------------------
" fswitch configuration
" ------------------------------------------------------------
"
" Set fswichdst and fswitchloc variables when BufEnter event takes place
" on a file whose name matches {*.cpp}.

au! BufEnter *.cpp let b:fswitchdst = 'hpp,h'
au! BufEnter *.h   let b:fswitchdst = 'cpp,c'

" fswitchdst  - Denotes the files extensions that is the target extension of
"               the current file's companion file.
"
" fswitchlocs - Contains a set of directories that indicate directory names 
"               that should be formulated when trying to find the alternate
"               file.

" ------------------------------------------------------------
" vim-protodef configuration 
" ------------------------------------------------------------

nmap <buffer> <silent> <leader> ,PP
nmap <buffer> <silent> <leader> ,PN

" NOTE: This doesn't seem to disable the sorting.
let g:disable_protodef_sorting = 1


" ------------------------------------------------------------
" Vim configuration
" ------------------------------------------------------------

set nu                  " Enable line numbers
syntax on               " Enable synax highlighting
set incsearch           " Enable incremental search
set hlsearch            " Enable highlight search
set splitbelow          " Always split below"
set mouse=a             " Enable mouse drag on window splits
set tabstop=4           " How many columns of whitespace a \t is worth
set shiftwidth=4        " How many columns of whitespace a “level of indentation” is worth
set expandtab           " Use spaces when tabbing

if !has('nvim')
    set termwinsize=12x0    " Set terminal size
endif

set background=dark     " Set background 


" ------------------------------------------------------------
" Key mappings
" ------------------------------------------------------------

" General
nmap        <C-B>     :buffers<CR>
nmap        <C-J>     :term<CR>

" NERDTree
" nmap        <F2>      :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" tagbar
nmap        <F8>      :TagbarToggle<CR>

" ctrlds
nmap        <C-F>f    <Plug>CtrlSFPrompt
xmap        <C-F>f    <Plug>CtrlSFVwordPath
xmap        <C-F>F    <Plug>CtrlSFVwordExec
nmap        <C-F>n    <Plug>CtrlSFCwordPath
nmap        <C-F>p    <Plug>CtrlSFPwordPath
nnoremap    <C-F>o    :CtrlSFOpen<CR>
nnoremap    <C-F>t    :CtrlSFToggle<CR>
inoremap    <C-F>t    <Esc>:CtrlSFToggle<CR>

" fswitch
nmap        <C-Z>     :vsplit <bar> :wincmd l <bar> :FSRight<CR>
" -------------------------------------------------------------
"  tsconfig 
"  ------------------------------------------------------------
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
