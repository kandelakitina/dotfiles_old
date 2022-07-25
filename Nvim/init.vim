" Adding MinPac package managers to load first
packadd minpac 
call minpac#init()

" Add packs here
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-unimpaired')
call minpac#add('junegunn/fzf.vim')

" === Add custom commands here ===
" Creating a command to update nvim pack
command! PackUpdate call minpac#update() 

" Creating command to clean deleted packs with Minpac manager
command! PackClean call minpac#clean() 

" Creating command to showRuntime
command! RuntimePath :echo join(split(&runtimepath, ','), "\n") 

" === Add custom mappings here ===
" Mapping fuzzy finder to Ctrl-P
nnoremap <C-p> :<C-u>FZF<CR> 

" FZF (fuzzy finder) to use ripgrep 
let $FZF_DEFAULT_COMMAND = 'rg --files'

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Insert mode completion
imap <c-x><c-f> <plug>(fzf-complete-path)
