nnoremap <Leader>w :bp<CR>
nnoremap <Leader>e :bn<CR>
nnoremap     <M-l> : so %<CR>
nnoremap     <M-R> : %s/
nnoremap     <M-r> : .,$s/
nnoremap     <M-c> :Bclose<CR>
nnoremap     <F5> :ls<CR>:b
nnoremap     <F3> :noh<CR>
nnoremap     <F8> :diffupdate<CR>
nnoremap     <F6> :diffthis<CR>
nnoremap     <F7> :diffoff<CR>
nnoremap     <M-g> :%!grep 
"comment-uncomment
vnoremap <M-a> :norm i//<CR>
vnoremap <M-d> :norm ^xx<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-l> <C-w>l
noremap <M-0> <C-w><
noremap <M-9> <C-w>>
noremap <M-7> <C-w>-
noremap <M-8> <C-w>+

noremap 8 *<S-n> 
vnoremap // y/<C-R>"<CR>

"make the autocomplete navigation through j/k
inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

"shortcut to search for a visual selection
" nnoremap <silent> <Leader>h ml:execute 'match Search /\%'.line('.').'l/'<CR>
nnoremap <silent> <Leader>u :call clearmatches()<CR>


"""""" New mappings nov 2020
" remap :w save with Leader s
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>
" remap :q save with Leader q
nnoremap <leader>q :wqa<cr>
inoremap <leader>q <C-c>:wqa<cr>


" Map ESC to jj
imap jj <ESC>
"new to copy
imap kk <ESC> 
"new to copy
"imap ll <ESC> 
"new to copy
imap hh <ESC> 
"new to copy
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"move fast

" nnoremap  <C-h>  7h
" nnoremap  <M-j>  10jzz
" nnoremap  <M-k>  10kzz
" vnoremap  <M-j>  10jzz
" vnoremap  <M-k>  10kzz
" nnoremap  <C-l>  10l
nnoremap  <M-j>  10j
nnoremap  <M-k>  10k
vnoremap  <M-j>  10j
vnoremap  <M-k>  10k

nnoremap  <M-l>  15l
nnoremap  <M-g>  15h
vnoremap  <M-l>  15l
vnoremap  <M-g>  15h

nnoremap  <M-u>  10jzz
nnoremap  <M-i>  10kzz
vnoremap  <M-u>  10jzz
vnoremap  <M-i>  10kzz
"paste/replace 
nnoremap  <M-p>  ebPldw

"comment
" Commenting blocks of code.
autocmd FileType c,cppva,scala    let b:comment_leader = '// '
autocmd FileType c,cppva,scala    let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '

autocmd BufNewFile,BufRead *.v let b:comment_leader = '// '
autocmd BufNewFile,BufRead *.sv let b:comment_leader = '// '


noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>cx :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>'"'"



"apply macro on visually selected lines
vnoremap <leader>m :normal @

"quick select word
nnoremap 44  yiw
nnoremap 33  diw
nnoremap 22  yi)
nnoremap 11  di)

"copy and find
nnoremap \\ viwy/\V<C-R>=escape(@",'/\')<CR><CR>N

"quick switch buffer
nnoremap <leader>b :b 

"quickly jump to a file
nnoremap ff <c-w>f

"quick go to start of line
nnoremap <leader>w ^
nnoremap <leader>e $
vnoremap <leader>w ^
vnoremap <leader>e $

"go to the end of the selection after yank
vmap y y`]


