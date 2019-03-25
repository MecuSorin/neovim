imap jk <Esc>

" Easy to enter in edit mode
"nmap <Space> i
"nmap <Tab> i<Tab>
"nmap <Enter> i<Enter>

"EasyMotion
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>S <Plug>(jasymotion-t2)
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
map  <Leader><Leader>w <Plug>(easymotion-bd-w)

" Quit and save
nnoremap <leader>z	:wq!<cr>
nnoremap <leader>q	:q<cr>
nnoremap <leader>w	:w<cr>
nnoremap <leader>Q	:q!<cr>

" Buffers
nnoremap <leader>p	"*p
nnoremap <leader>P	"*P
vnoremap <leader>y	"*y
nnoremap <leader>c	:let @*=@"<cr>
vnoremap <leader>x	"*x

" Sets the commands like ci; or ya.
for mnemonic in  [ ".", ";"]
	for command in [ "y", "d", "c", "v" ]
		exe "nnoremap ".command."i".mnemonic." T".mnemonic.command."t".mnemonic
		exe "nnoremap ".command."a".mnemonic." F".mnemonic.command."f".mnemonic
	endfor
endfor


" Tabs
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
noremap <F7> :set expandtab!<CR>
nmap <Leader>h :tabnew %:h<CR>

" Haskell snippets
let @e="Ierror \"to do\" -- jk"
let @f="0d2f-"
