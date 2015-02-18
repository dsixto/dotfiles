set runtimepath^=~/.vim/plugin/ctrlp.vim
let mapleader=' '


" To move to a misspelled word, use ]s and [s. The ]s command will move the
" cursor to the next misspelled word, the [s command will move the cursor back
" through the buffer to previous misspelled words.
" Once the cursor is on the word, use z=, and Vim will suggest a list of
" alternatives that it thinks may be correct.
"set spell spelllang=en_us

set clipboard=unnamed


" .vimrc
" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
       
set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
 
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
 
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
 
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
 
set showcmd         " Show (partial) command in status line.

"set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
 
"set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
 
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
 
set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
 
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
                    " n         recognize numbered lists
 
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
 
set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
 
set mouse=a         " Enable the use of the mouse.


" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

syntax on           " Enable syntax highlighting

"set visualbell      " Use visual bell instead of beeping when doing something wrong

"set cmdheight=2     " Set the command window height to 2 lines, to avoid many
" cases of having to press <Enter> to continue"

set matchtime=5     " how many tenths of a second to blink matching brackets for

set laststatus=2    "To display the status line always

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Sets how many lines of history VIM has to remember
set history=100  " default 20

" For regular expressions turn magic on
set magic   " Magic on should be default but to make sure

" When you use :set list it will show tabs and everything but spaces as
" something
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

set timeoutlen=500
"set ttimeoutlen=0

imap jk <ESC>

" Window moving
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Substitute command in "very magic" mode by adding \v aka grep extended
nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %smagic/\v

" Substitute command colon separated shortcut
noremap <Leader>; :s:\v::g<Left><Left><Left>
noremap <Leader>' :%s:\v::g<Left><Left><Left>

" Edit and sourc vimrc file
nnoremap <Leader>ev :vs $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

" Comment lines or paragraph with //
nnoremap <Leader>cl mzI//<esc>'z
nnoremap <Leader>cp mzVip:s/^\s*\zs\ze/\/\//<cr><esc>'z

nnoremap <Leader>ul mzV:s/\%V\(\s*\)\/\//\1<cr>'z
nnoremap <Leader>up mzVip:s/\%V\(\s*\)\/\//\1<cr>'z

vnoremap <Leader>cl mz:s/^\s*\zs\ze/\/\/<cr>'z
vnoremap <Leader>ul mzV:s/\%V\(\s*\)\/\//\1<cr>'z

" Add getter and setters for properties
nnoremap <f1> 0/private\<bar>protected\<bar>publicww"zywjmqGo?}dGopublic function set "zpbhx~A($"zpA){	$this->"zpA = $"zpA;return $this;}<<oo	public function get "zpbhx~A(){	return $this->"zpA;}}V(((((=<<o'q

"map <f5> :!php 'd:\wamp\www\unified\tools\illustratorimport.php' <CR>

" Shortcut for nerdTree
nnoremap <f2> :NERDTreeToggle<CR>

" run php on current file
nnoremap <f3> :!php % <CR>

" Display statistics
nmap <Leader>g g<C-g>

" Paste from OS X PasteBoard, but I have it configured so it works very well in
" insert mode and in normal mode. The nopaste setting makes sure that
" auto-indent doesn't go crazy when you try to paste something in. 
nmap <Leader>v :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <Leader>v <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

" Copies text to OS X PasteBoard. If you are in normal mode, it will just grab
" the line your working on. If you in visual mode however, it will grab all the
" selected text. 
nmap <Leader>c :.w !pbcopy<CR><CR>
vmap <Leader>c :w !pbcopy<CR><CR>
