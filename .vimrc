call pathogen#infect()
syntax on
filetype plugin indent on
autocmd Filetype mkd,ikiwiki set nofoldenable | set expandtab | set shiftwidth=4 | set comments=fb:*,fb:-,fb:+,n:> commentstring=>\ %s
autocmd BufRead *.pl,*.pm,*.t,*php,*.html,*.sh,*.js set expandtab | set shiftwidth=4 | set autoindent | set smarttab
