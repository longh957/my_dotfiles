"Not Used
" TODO move neomake settings here and source in init
"run linters after save
" -----------------------------------------------------

" npm install -g eslint
" autocmd BufWritePost *.js Neomake eslint
" autocmd BufWritePost *.es6 Neomake eslint
" gem install rubocop
" autocmd BufWritePost *.rb Neomake rubocop
" apt-get install tidy
" autocmd BufWritePost *.html Neomake tidy
" gem install scsslint
" autocmd BufWritePost *.scss Neomake scsslint
" pip3 install vim-vint
" autocmd BufWritePost *.vim Neomake vint

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_scss_enabled_makers = ['scss_lint']
let g:neomake_ruby_enabled_makers = ['rubocop']
let g:neomake_es6_enabled_makers = ['eslint']
let g:neomake_html_enabled_makers = ['tidy']


" -----------------------------------------------------
" 4.9 Neomake settings
" -----------------------------------------------------
let g:neomake_verbose=0

let g:neomake_error_sign = {
      \ 'text': '✖',
      \ 'texthl': 'SyntasticErrorSign',
      \ }

let g:neomake_warning_sign = {
      \ 'text': '⚠',
      \ 'texthl': 'SyntasticWarningSign',
      \ }

autocmd! BufWritePost * Neomake
