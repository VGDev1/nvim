" nnoremap <silent> <space>/ :Commentary<CR>
vnoremap <silent> <space>ci :Commentary<CR>
autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
