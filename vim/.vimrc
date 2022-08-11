" Key Bindings
" Mappings for brackets and quotes
" Commands starting with inoremap work only insert mode and commands starting with nnoremap work only in normal mode in vim.
inoremap <silent> {<CR> {<CR>}<Esc>O
" If you press { and newline character, then the it will get printed like this:- { \n \t | \n } where | represents the cursor.
inoremap <silent> (<CR> (<CR>)<Esc>O
" If you press ( and newline character, then the it will get printed like this:- ( \n \t | \n ) where | represents the cursor.
inoremap <silent> [<CR> [<CR>]<Esc>O
" If you press [ and newline character, then the it will get printed like this:- [ \n \t | \n ] where | represents the cursor.
inoremap <silent> { {}<Left>
" If you press {, then the it will get printed like this:- {|} where | represents the cursor.
inoremap <silent> ( ()<Left>
" If you press (, then the it will get printed like this:- (|) where | represents the cursor.
inoremap <silent> [ []<Left>
" If you press [, then the it will get printed like this:- [|] where | represents the cursor.
inoremap <silent> " ""<Left>
" If you press ", then the it will get printed like this:- "|" where | represents the cursor.
inoremap <silent> ' ''<Left>
" If you press ', then the it will get printed like this:- '|' where | represents the cursor.
inoremap <silent> ` ``<Left>
" If you press `, then the it will get printed like this:- `|` where | represents the cursor.
inoremap <silent> {} {}
" If you press {}, then it will get printed like this:- {}| where | represents the cursor.
inoremap <silent> () ()
" If you press (), then it will get printed like this:- ()| where | represents the cursor.
inoremap <silent> [] []
" If you press [], then it will get printed like this:- []| where | represents the cursor.
inoremap <silent> "" ""
" If you press "", then it will get printed like this:- ""| where | represents the cursor.
inoremap <silent> '' ''
" If you press '', then it will get printed like this:- ''| where | represents the cursor.
inoremap <silent> `` ``
" If you press ``, then it will get printed like this:- ``| where | represents the cursor.
" Mappings for tabs and space conversions
" To convert spaces to tabs you press tab three times and hit enter and to convert tabs to spaces, you press space three times and hit enter.
nnoremap <silent> <Tab><Tab><Tab> :set noet\|retab!<CR>
" Pressing tab three times in normal mode makes this command appear in command mode where you just have to change the number of spaces in this command to the spaces which you represent for each tab and hit enter.
nnoremap <silent> <Space><Space><Space> :set et\|retab<CR>
" Pressing space three times in normal mode makes this command appear in command mode where you just have to change the number of spaces in this command to the spaces which you represent for each tab and hit enter
nnoremap find1 :1,$s/  /\t/g
" search regex for special characters also
nnoremap find2 :n1,n2s///g
" search regex for strings only
nnoremap find3 :%s///g
" search regex for strings only without line numbers
filetype on
filetype plugin on
filetype indent on
" support for filetype plugins and indentation is turned on.
" Filetype maps
" autoclose html tags mapping
set omnifunc=htmlcomplete#CompleteTags
" This calls the builtin function to complete html tags.
set omnifunc=syntaxcomplete#Complete
" This calls for builtin syntax completion
set completeopt=menuone,preview
au FileType html,xml,xsl inoremap <silent> <C-_> <Esc>A<Enter></<C-x><C-o><Esc>^i<BS><Esc><up>o|inoremap <silent> <C-_><C-_> <Esc>F<f>a</<C-x><C-o><Esc>vit<Esc>i|inoremap <silent> <C-_><C-_><C-_> <Esc>F<f>a</<C-x><C-o>|inoremap <silent> < <><Left>|inoremap <silent> </ </><Left>|inoremap <silent> <% <%<Space><Space>%><Left><Left><Left>|inoremap <silent> <%= <%=<Space><Space>%><Left><Left><Left>|inoremap <silent> <> <>|inoremap <silent> </> </>|inoremap <silent> <%<Space> <%|inoremap <silent> <%=<Space> <%=|inoremap <silent> <<Space> <|inoremap <silent> </<Space> </|inoremap <silent> <%=<Space><Space>%> <%=<Space><Space>%>|inoremap <silent> <%<Space><Space>%> <%<Space><Space>%>
" If you type a html opening tag like the following <html>| or <html|> with the cursor represented by | and if the cursor is in those positions and if you hit <ctrl + _>, then it will get printed like this:- <html> \n \t | \n </html> where | represents the cursor.
" If you type a html opening tag like the following <html|> with the cursor represented by | and if the cursor is in those positions and if you hit <ctrl + _><ctrl + _>, then it will get printed like this:- <html>|</html> where | represents the cursor.
" If you type a html opening tag like the following <html|> with the cursor represented by | and if the cursor is in those positions and if you hit <ctrl + _><ctrl + _><ctrl + _>, then it will get printed like this:- <html></html>| where | represents the cursor.
" If you press <, then the it will get printed like this:- <|> where | represents the cursor.
" If you press </, then the it will get printed like this:- </|> where | represents the cursor.
" If you press <%, then it will get printed like this:- <% | %> where | represents the cursor.
" If you press <%=, then it will get printed like this:- <%= | %> where | represents the cursor.
" If you press <>, then it will get printed like this:- <>| where | represents the cursor.
" If you press </>, then it will get printed like this:- </>| where | represents the cursor.
" If you press <%\s, then it will get printed like this:- <%| where | represents the cursor.
" If you press <%=\s, then it will get printed like this:- <%| where | represents the cursor.
" If you press <\s, then the it will get printed like this:- < where | represents the cursor.
" If you press </\s, then the it will get printed like this:- </ where | represents the cursor.
" If you press <%=  %>, then it will get printed like this:- <%=  %>| where | represents the cursor.
" If you press <%  %>, then it will get printed like this:- <%  %>| where | represents the cursor.
" New Tabs config
nnoremap <silent> <Tab>c :tabnew<Space>
" Used to create new tab
nnoremap <silent> <Tab>n :tabn<Space>
" Used to go to the tab with the number specified
nnoremap <silent> <Tab><up> :tabr<CR>
" To go to the first tab
nnoremap <silent> <Tab><down> :tabl<CR>
" To go to the last tab
nnoremap <silent> <Tab><left> :tabp<CR>
" To go to the previous tab
nnoremap <silent> <Tab><right> :tabn<CR>
" To go to the next tab
nnoremap <silent> <Tab>k :tabr<CR>
" To go to the first tab
nnoremap <silent> <Tab>j :tabl<CR>
" To go to the last tab
nnoremap <silent> <Tab>h :tabp<CR>
" To go to the previous tab
nnoremap <silent> <Tab>l :tabn<CR>
" To go to the next tab
nnoremap <F1><F1> :split<Space>
" Used to create a horizontal split in vim
nnoremap <F1> :vsplit<Space>
" Used to create a vertical split in vim
au BufEnter,BufNewFile,BufNew *.js,*.ejs,*.html imap <silent> =<CR> =><Space>{<CR>
" Used in js files to print = as <Space>=><Space>{\n\t|\n} and :\n will be printed as :\n\t
au BufNewFile,BufNew,BufRead *.ejs set filetype=html
au BufNewFile,BufNew,BufRead *.fish set filetype=vim
" Used to set html hightlighting for ejs files.
function! <SID>StripTrailingWhitespaces()
  let l:l=line(".")
  let l:c=col(".")
  %s/\s\+$//e
  call cursor(l:l, l:c)
endfunction
au BufWritePre * call <SID>StripTrailingWhitespaces()
" Used to remove trailing spaces in a file.
au BufWritePre * :%s#\($\n\s*\)\+\%$##e
" Used to remove empty lines at last in a file before saving in vim
au BufEnter,BufNew,BufNewFile *.py,*.sh,*.bash,*.ruby vnoremap <silent> <F2> :s/^/#<Space><CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.php,*.js,*.c,*.cpp,*.java,*.scala,*.go vnoremap <silent> <F2> :s/^/\/\/<Space><CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.vim,.vimrc vnoremap <silent> <F2> :s/^/"<Space><CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.py,*.sh,*.bash,*.ruby nnoremap <silent> <F2> V:s/^/#<Space><CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.php,*.js,*.c,*.cpp,*.java,*.scala,*.go nnoremap <silent> <F2> V:s/^/\/\/<Space><CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.vim,.vimrc nnoremap <silent> <F2> V:s/^/"<Space><CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.py,*.sh,*.bash,*.ruby inoremap <silent> <F2> <Esc>V:s/^/#<Space><CR>:nohl<CR>i
au BufEnter,BufNew,BufNewFile *.php,*.js,*.c,*.cpp,*.java,*.scala,*.go inoremap <silent> <F2> <Esc>V:s/^/\/\/<Space><CR>:nohl<CR>i
au BufEnter,BufNew,BufNewFile *.vim,.vimrc inoremap <silent> <F2> <Esc>V:s/^/"<Space><CR>:nohl<CR>i
au BufEnter,BufNew,BufNewFile *.py,*.sh,*.bash,*.ruby vnoremap <silent> <F3> :s/^#<Space>/<CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.php,*.js,*.c,*.cpp,*.java,*.scala,*.go vnoremap <silent> <F3> :s/^\/\/<Space>/<CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.vim,.vimrc vnoremap <silent> <F3> :s/^"<Space>/<CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.py,*.sh,*.bash,*.ruby nnoremap <silent> <F3> V:s/^#<Space>/<CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.php,*.js,*.c,*.cpp,*.java,*.scala,*.go nnoremap <silent> <F3> V:s/^\/\/<Space>/<CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.vim,.vimrc nnoremap <silent> <F3> V:s/^"<Space>/<CR>:nohl<CR>
au BufEnter,BufNew,BufNewFile *.py,*.sh,*.bash,*.ruby inoremap <silent> <F3> <Esc>V:s/^#<Space>/<CR>:nohl<CR>i
au BufEnter,BufNew,BufNewFile *.php,*.js,*.c,*.cpp,*.java,*.scala,*.go inoremap <silent> <F3> <Esc>V:s/^\/\/<Space>/<CR>:nohl<CR>i
au BufEnter,BufNew,BufNewFile *.vim,.vimrc inoremap <silent> <F3> <Esc>V:s/^"<Space>/<CR>:nohl<CR>i
" Used to put comments in a file.
vnoremap <silent> <C-c> "+y
vnoremap <silent> <C-x> "+d
" This is a special mapping for sending the selected text to the system clipboard
nnoremap <silent> <F4> :set wrap!<CR>
inoremap <silent> <F4> <Esc>:set wrap!<CR>a
" Used to toggle wrap by pressing F4 key.
nnoremap <silent> <F5> :nohl<CR>
inoremap <silent> <F5> <Esc>:nohl<CR>a
" Used to execute the command nohl when F5 key is pressed.
set mouse=a
" sets mouse mode to on
set nocompatible
" removes compatibility with vi
syntax on
" sets syntax on
set showmatch
" shows all matches of a word like bash
set matchpairs+=<:>
set title
" sets title
set number
" sets numberline for the text editor
set laststatus=2
" sets statusline
set cursorcolumn
" highlights the vertical line in which the cursor is.
set cursorline
" highlights the horizontal line in which the cursor is.
set incsearch
" starts searching for the word when you enter the first character of the string
set hlsearch
" setting searchlist
set wildmenu
set wildmode=longest:full,full
" setting wildmenu
set list
" it is used to define invisible characters or characters which represent your tabs, spaces, trailing-lines,etc.
set autoindent
" puts your cursor on the same indentation level as the before line
set nowrap
" stops wordwrap in vim
au BufEnter,BufNew,BufNewFile *.txt set wrap
" sets wrap for text files.
set noexpandtab
" sets tabs instead of spaces
set tabstop=2
" sets tabspace
set shiftwidth=2
" sets the width to shift for the selected lines or line of text
au FileType python set shiftwidth=4
au FileType python set tabstop=4
set nofoldenable
" removes function folding
set pastetoggle=<F7>
" toggling paste mode on and off
set showmode
" shows the current mode of vim
inoremap <silent> <C-h> <left>
inoremap <silent> <C-j> <down>
inoremap <silent> <C-k> <up>
inoremap <silent> <C-l> <right>
" config for navigating in insert mode by holding ctrl and h,j,k,l keys.
tab all
" converts all files in argument list to tabs
" Show actual colors in terminal
syntax reset
highlight clear
set background=dark
" Sets background to dark
function CustomColorSetter()
  highlight Normal ctermfg=249 ctermbg=235 cterm=NONE
  highlight LineNR ctermbg=233 ctermfg=8 cterm=NONE
  highlight Boolean ctermfg=178 cterm=NONE
  highlight Character ctermfg=75 cterm=NONE
  highlight ColorColumn ctermbg=234 cterm=NONE
  highlight Comment ctermfg=30 cterm=NONE
  highlight Conditional ctermfg=68 cterm=bold
  highlight Constant ctermfg=218 cterm=NONE
  highlight Cursor ctermfg=235 ctermbg=178 cterm=bold
  highlight CursorColumn ctermbg=234 cterm=NONE
  highlight CursorLine ctermbg=234 cterm=NONE
  highlight CursorLineNR ctermbg=28 ctermfg=235 cterm=bold
  highlight Debug ctermfg=225 cterm=NONE
  highlight Define ctermfg=177 cterm=NONE
  highlight Delimiter ctermfg=151 cterm=NONE
  highlight DiffAdd ctermbg=24 cterm=NONE
  highlight DiffChange ctermfg=181 ctermbg=239 cterm=NONE
  highlight DiffDelete ctermfg=162 ctermbg=53 cterm=NONE
  highlight DiffText ctermbg=102 cterm=NONE
  highlight Directory ctermfg=67 cterm=bold
  highlight Error ctermfg=160 ctermbg=235 cterm=NONE
  highlight ErrorMsg ctermfg=196 ctermbg=235 cterm=NONE
  highlight Exception ctermfg=204 cterm=bold
  highlight Float ctermfg=135 cterm=NONE
  highlight FoldColumn ctermfg=67 ctermbg=236 cterm=NONE
  highlight Folded ctermfg=133 ctermbg=236 cterm=bold
  highlight Function ctermfg=169 cterm=bold
  highlight Identifier ctermfg=167 cterm=NONE
  highlight Ignore ctermfg=244 cterm=NONE
  highlight IncSearch ctermfg=16 ctermbg=76 cterm=bold
  highlight Keyword ctermfg=68 cterm=bold
  highlight Label ctermfg=104 cterm=NONE
  highlight Macro ctermfg=140 cterm=NONE
  highlight MatchParen ctermfg=40 ctermbg=234 cterm=bold
  highlight ModeMsg ctermfg=229 cterm=NONE
  highlight NonText ctermfg=238 cterm=NONE
  highlight Number ctermfg=176 cterm=NONE
  highlight Operator ctermfg=111 cterm=NONE
  highlight Pmenu ctermfg=141 ctermbg=236 cterm=NONE
  highlight PmenuSel ctermfg=251 ctermbg=97 cterm=NONE
  highlight PmenuSbar ctermfg=28  ctermbg=233 cterm=NONE
  highlight PmenuThumb ctermfg=160 ctermbg=97 cterm=NONE
  highlight PreCondit ctermfg=139 cterm=NONE
  highlight PreProc ctermfg=176 cterm=NONE
  highlight Question ctermfg=81 cterm=NONE
  highlight Repeat ctermfg=68 cterm=bold
  highlight Search ctermfg=16 ctermbg=76 cterm=bold
  highlight SignColumn ctermfg=118 ctermbg=235 cterm=NONE
  highlight Special ctermfg=169 cterm=NONE
  highlight SpecialChar ctermfg=171 cterm=bold
  highlight SpecialComment ctermfg=24 cterm=NONE
  highlight SpecialKey ctermfg=238 cterm=NONE
  highlight SpellBad ctermfg=15 cterm=underline
  highlight SpellCap ctermfg=15 cterm=underline
  highlight SpellLocal ctermfg=253 cterm=underline
  highlight SpellRare ctermfg=218 cterm=underline
  highlight Statement ctermfg=68 cterm=NONE
  highlight StatusLine ctermbg=233 cterm=NONE
  highlight StatusLineNC ctermbg=234 cterm=NONE
  highlight StatusLineTerm ctermfg=140 ctermbg=238 cterm=bold
  highlight StatusLineTermNC ctermfg=244 ctermbg=237 cterm=bold
  highlight StorageClass ctermfg=178 cterm=bold
  highlight String ctermfg=36 cterm=NONE
  highlight Structure ctermfg=68 cterm=bold
  highlight TabLine ctermfg=66 ctermbg=239 cterm=NONE
  highlight TabLineFill ctermfg=145 ctermbg=238 cterm=NONE
  highlight TabLineSel ctermfg=178 ctermbg=240 cterm=NONE
  highlight Tag ctermfg=161 cterm=NONE
  highlight Title ctermfg=176 cterm=NONE
  highlight Todo ctermfg=172 ctermbg=235 cterm=NONE
  highlight Type ctermfg=68 cterm=NONE
  highlight Typedef ctermfg=68 cterm=NONE
  highlight VertSplit ctermfg=234 cterm=NONE
  highlight Visual ctermbg=238 cterm=NONE
  highlight VisualNOS ctermbg=238 cterm=NONE
  highlight Warning ctermfg=136 cterm=bold
  highlight WarningMsg ctermfg=136 cterm=bold
  highlight WildMenu ctermfg=214 ctermbg=239 cterm=NONE
  highlight VertSplit ctermfg=235 ctermbg=238 cterm=NONE
  highlight User1 ctermbg=12 ctermfg=0
  highlight User2 ctermbg=8 ctermfg=0
  highlight User3 ctermbg=214 ctermfg=0
  highlight User4 ctermbg=233 ctermfg=8
  highlight User5 ctermbg=8 ctermfg=0
  highlight User6 ctermbg=2 ctermfg=0
"  Custom
  highlight MatchParen ctermbg=214 ctermfg=0 cterm=NONE
  highlight AllBraces ctermfg=214 ctermbg=NONE cterm=NONE
  highlight AllExtraChars ctermfg=214 ctermbg=NONE cterm=NONE
endfunction
call CustomColorSetter()
" sets the colorscheme
set listchars=eol:¬,tab:\|\-,trail:~,extends:>,precedes:<
" set symbols for indents, and end of line characters.
set guicursor=n-v-c-i:block
" sets cursor to a block in vim.
let g:python_recommended_style=0
" Disables Python style for indentation guides
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=15
function FileBrowserToggle()
  if winnr('$')==1
    call feedkeys(":Vexplore\<CR>")
  elseif winnr('$')==2
    call feedkeys("\<C-w>h:q\<CR>")
  endif
endfunction
nnoremap <silent> <F6> :call FileBrowserToggle()<CR>
" Newrw file browser configuration
nnoremap <silent> <S-h> <C-w>h
nnoremap <silent> <S-l> <C-w>l
nnoremap <silent> <S-j> <C-w>j
nnoremap <silent> <S-k> <C-w>k
" Navigating between file browser and editor

function StartsWith(longer, shorter)
  return a:longer[0:len(a:shorter)-1]==?a:shorter
endfunction

function ModeReturner()
  if mode()[0]==?'R'
    return 'REPLACE'
  elseif mode()[0]==?'n'
    return 'NORMAL'
  elseif mode()[0]==?'i'
    return 'INSERT'
  elseif mode()[0]==?'v' || StartsWith(mode(), "\<C-V>")
    return 'VISUAL'
  elseif mode()[0]==?'s' || StartsWith(mode(), '\<C-S>')
    return 'SELECT'
  elseif mode()[0]==?'c'
    return 'COMMAND'
  endif
  return mode()
endfunction

function CheckActiveWindow()
  if g:actual_curwin==win_getid()
    return '@'
  else
    return '#'
  endif
endfunction

set statusline=%1*\ %{ModeReturner()}\ %*
set statusline+=%2*\ %Y\ %*
set statusline+=%3*[%{CheckActiveWindow()}]%r%m%*
set statusline+=%<
if has('nvim')
  set statusline+=%4*\ nvim\ %t\ %=%*
else
  set statusline+=%4*\ vim\ %t\ %=%*
endif
set statusline+=%5*\ %p%%\ %*
set statusline+=%6*\ %l-%L\:%c-%{col('$')}\ %*
" Config for statusline
map <silent> <M-Space> <Esc>
" au CursorMovedI * call feedkeys("\<C-p>\<C-n>")
call plug#begin()
call plug#end()
match AllBraces /[(){}<>\[\]]/
2match AllExtraChars /[.~,?/\|:;!@#$%^&*\-+=]/
syntax match Constant /0123456789/
