call pathogen#infect()
syntax on
filetype plugin indent on
autocmd Filetype mkd,ikiwiki set nofoldenable | set expandtab | set shiftwidth=4 | set comments=fb:*,fb:-,fb:+,n:> commentstring=>\ %s
autocmd BufRead *.pl,*.pm,*.t,*php,*.html,*.sh,*.js set expandtab | set shiftwidth=4 | set autoindent | set smarttab
" When editing a file on a Mac, always jump to the last cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal! g'\"" |
\ endif
