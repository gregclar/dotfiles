call pathogen#infect()

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set guicursor+=a:blinkon0

set ic
set nu


filetype plugin indent on " tim pope

" http://vim.wikia.com/wiki/Switch_between_Vim_window_splits_easily
" nnoremap <silent> <A-Up> :wincmd k<CR>
" nnoremap <silent> <A-Down> :wincmd j<CR>
" nnoremap <silent> <A-Left> :wincmd h<CR>
" nnoremap <silent> <A-Right> :wincmd l<CR>

if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on
 
  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
  filetype on
  au BufNewFile,BufRead *.less set filetype=css
  au BufNewFile,BufRead *.md set filetype=markdown
endif

if has('gui_running')
  set guifont=Monaco:h13
endif

" color biogoo
color railscasts
set hls



" This is FROM Gary Bernhardt's .vimrc file
" vim:set ts=2 sts=2 sw=2 expandtab:

let mapleader=","

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

nnoremap <leader><leader> <c-^>


map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT public/stylesheets<cr>
map <leader>gf :CommandTFlush<cr>\|:CommandT features<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
map <leader>gt :CommandTFlush<cr>\|:CommandTTag<cr>
" map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
" map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

