" Mostrar números das linhas
set number

" Mouse navegação
set mouse=a

" Usar quatro espaços para identação
set softtabstop=4 expandtab tabstop=4 shiftwidth=4

" Cores do texto e fundo principais
highlight Normal ctermfg=white ctermbg=233
" Cores da numeração de linhas
highlight LineNr ctermfg=237 ctermbg=234

" Visual mode color
hi Visual ctermfg=black ctermbg=blue

" Para colorir adequadamente o matching parênteses"
hi MatchParen cterm=bold ctermbg=none ctermfg=226

" Destaque da pesquisa
set hlsearch!
hi Search ctermbg=226 ctermfg=black

" No Wrap
set nowrap
noremap <leader>w :set wrap!<Enter> <bar> :set linebreak<Enter> <bar> :set textwidth=0<Enter>

" Atalho de Dalton file pra limpar pesquisa
" nnoremap <leader>s :set hlsearch!<cr>
nnoremap <leader>s :noh<cr>

" Cor da pesquisa
" hi Search ctermbg=226 ctermfg=black

" Esse trecho é para ctrl + arrow funcionar no tmux
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" Usar Tab e Shift-Tab para alternar entre abas
" noremap <Tab> :tabn<Enter>
" noremap <S-Tab> :tabp<Enter>
"Alternar entre buffers
noremap <Tab> :bn<Enter>
noremap <S-Tab> :bp<Enter>
set hidden


" Mostra caminho completo do arquivo
set laststatus=2
set statusline+=%F
" configura statusline (Dalton file configuration)
set statusline+=\       " Separator
set statusline+=%y      " Filetype of the file
set statusline+=\ %l    " Current line
" set statusline+=/     " Separator
set statusline+=:       " Separator
set statusline+=%c      " Current column
" set statusline+=%L    " Total lines
" set statusline+=\ %c  " Current column

" Mantém 5 linhas distante de início e fim durante scroll
set scrolloff=5

" Dalton file for html files
augroup html
    autocmd BufNewFile,BufRead *.html setlocal nowrap
    autocmd BufNewFile,BufRead *.html set textwidth=0
    autocmd BufNewFile,BufRead *.html highlight clear OverLength
    autocmd BufNewFile,BufRead *.html set tabstop=2
    autocmd BufNewFile,BufRead *.html set softtabstop=2
    autocmd BufNewFile,BufRead *.html set shiftwidth=2
augroup end

"Instalar plugin para arquivo firebase rules via plugin manager
call plug#begin()
Plug 'https://github.com/delphinus/vim-firestore.git'
call plug#end()

" Plug 'https://github.com/preservim/nerdtree.git'


" Pra mover linhas
nnoremap <C-S-Up> :m .-2<CR>==
nnoremap <C-S-Down> :m .+1<CR>==

" Settings of Ale Plugin
let g:ale_completion_enabled = 1
