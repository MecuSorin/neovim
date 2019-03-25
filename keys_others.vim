
" Special character inserts
imap <buffer> \forall ∀
imap <buffer> \to →
imap <buffer> \lambda λ
imap <buffer> \Sigma Σ
imap <buffer> \exists ∃
imap <buffer> \equiv ≡


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf - find - f
map <Leader>\ :Files<CR>
"map <Leader>fg      :GFiles?<CR>
"map <Leader>fb      :Buffers<CR>
"map <Leader>ft      :tag <C-r><C-w><CR>
"map <Leader>fc      :Commits<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" window - w
map <Leader>ws :vsplit<CR>
map <Leader>wo :split<CR>
map <Leader>wc :close<CR>

map <Leader>ww <C-w><C-w>
map <Leader>wl <C-w><C-l>
map <Leader>wh <C-w><C-h>
map <Leader>wj <C-w><C-j>
map <Leader>wk <C-w><C-k>

map <Leader>wr <C-w>r

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" buffer - b
map <Leader>bd :bd<Cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" git stuff - g
map <Leader>gg :Gstatus<CR>
map <Leader>gd :Gvdiff<CR>
map <Leader>gsd :Gdivv<CR>
map <Leader>dh :diffget //2<CR>:diffupdate<CR>
map <Leader>dl :diffget //3<CR>:diffupdate<CR>
map <Leader>gw :Gwrite<CR>
map <Leader>du :diffupdate<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme - t
map <Leader>tt :Tags<CR>
map <Leader>tc :Colors<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other - r
nnoremap <Leader>fed :e ~/.config/nvim/init.vim<CR>
nnoremap <Leader>fedk :e ~/.config/nvim/keys.vim<CR>
nnoremap <Leader>fedko :e ~/.config/nvim/keys_others.vim<CR>
nnoremap <Leader>fer :so ~/.config/nvim/init.vim<CR>
map <Leader>fs :Rg <C-r><C-w><CR>
