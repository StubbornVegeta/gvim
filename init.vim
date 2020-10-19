" ============================================================================
"     �����[   �����[���������������[ �������������[ ���������������[�����������������[ �����������[
"     �����U   �����U�����X�T�T�T�T�a�����X�T�T�T�T�a �����X�T�T�T�T�a�^�T�T�����X�T�T�a�����X�T�T�����[
"     �����U   �����U�����������[  �����U  �������[�����������[     �����U   ���������������U
"     �^�����[ �����X�a�����X�T�T�a  �����U   �����U�����X�T�T�a     �����U   �����X�T�T�����U
"      �^���������X�a ���������������[�^�������������X�a���������������[   �����U   �����U  �����U
"       �^�T�T�T�a  �^�T�T�T�T�T�T�a �^�T�T�T�T�T�a �^�T�T�T�T�T�T�a   �^�T�a   �^�T�a  �^�T�a
" ============================================================================


call plug#begin('~/.vim/plugged')
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'xuhdev/vim-latex-live-preview', {'for':'tex'}
Plug 'vim-latex/vim-latex', {'for':'tex'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'gko/vim-coloresque', {'for':'css'}
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'sillybun/vim-repl'
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/vim-cursorword'
Plug 'joshdick/onedark.vim'
Plug 'vim-python/python-syntax'
call plug#end()

"set background=dark
set t_Co=256                                                    " ����256ɫ֧��
colorscheme onedark
syntax on
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }
"colorscheme gruvbox
set guioptions=                                                 "ȥ�����ߵ�scrollbar
"set guifont=FiraMono\ Nerd\ Font\ Mono:h16,Fira\ Mono\ for\ Powerline:h16                      "����������ֵĴ�С
" set guifont=FiraMono\ Nerd\ Font\ Mono:h16        " ����������ֵĴ�С
" set guifont=Consolas:h18                          " ����������ֵĴ�С
" set guifont=Source\ Code\ Pro\ for\ Powerline:h16 " ����������ֵĴ�С
" set guifont=Fira\ Code:h14                        " ����������ֵĴ�С
" set guifont=DejaVu\ Sans\ Mono:h16                " ����������ֵĴ�С
set guifont=Monaco:h15                              " ����������ֵĴ�С
"set guifont=Droid\ Sans\ Mono:h16                  " ����������ֵĴ�С
"set guifont=Lucida\ Sans\ Typewriter:h16           " ����������ֵĴ�С
"set guifont=Fira\ Mono\ for\ Powerline:h16         " ����������ֵĴ�С
"set guifont=Source\ Code\ Pro:h16                  " ����������ֵĴ�С
"set guifont=FuraMono\ Nerd\ Font\ Mono:h16         " ����������ֵĴ�С
filetype plugin indent on
filetype on
let mapleader=" "                                               " ����leader��Ϊ�ո��
set nocompatible                                                " ���Լ���ģʽ����

set encoding=utf-8                                              " utf-8����
set fileencodings=ucs-bom,utf-8,gb2313,gb18030,gbk,cp936,latin1
"" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries.
"if has('win32')
  ""set guioptions-=t
  "set fileencodings=chinese
"else
  "set fileencodings=utf-8
"endif
set fileformats=unix,dos,mac

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"language message zh_CN.utf-8
set helplang=cn                                                 " ���İ����ĵ�
set nomodeline
set relativenumber                                              " ����к�
set number                                                      " �����к�
set wrap                                                        " �Զ�����
set showcmd                                                     " ��ʾ������Ϣ
set cursorline                                                  " ��ʾ���������
"set cursorcolumn                                                " ��ʾ���������
set wildmenu                                                    " ��ʾ��ȫ��ʾ
set hlsearch                                                    " �����������
" set foldenable                                                " �����۵�
" set foldmethod=manual                                         " �ֶ��۵�

" ��vim����nohlsearch��ȡ������
exec "nohlsearch"
set shiftwidth=4                                                "�Զ������հ��ַ�����Ϊ4
set ts=4                                                        " ����tab������Ϊ�ĸ��ո�
set expandtab                                                   " ����tab���滻Ϊ�ĸ��ո��
" set cindent                                                     " ����C�Զ�����
" set autoindent

set noimdisable
" ���ļ��е�tab���滻�ɿո�
map <LEADER>    :retab!<CR>
set incsearch                                                   " һ������һ�߸���
set ignorecase                                                  " ���Դ�Сд
set smartcase                                                   " ���ܴ�Сд
set laststatus=2                                                " ����״̬���ڵ�����2��
set mouse=a                                                     " �������
set backspace=indent,eol,start                                  " �˸�������˵���һ��
set scrolloff=5                                                 " ����������ƶ���Χ����С5��
"set ruler
"set transparency=11

" ���ñ���͸��
"hi Normal ctermfg=252 ctermbg=none
" Ѱ����һ���������������������Ļ����
noremap = nzz
" Ѱ����һ���������������������Ļ����
noremap - Nzz
" ȡ������
noremap <LEADER><CR> :nohlsearch<CR>
map s <nop>

" ����
nmap S :w<CR>
" �˳�
map Q :q<CR>
"nmap <C-q> :q<CR>
" �ҷ������۽��Ҵ���
map sl :set splitright<CR>:vsplit<CR>:cd %:h<CR>
" ��������۽��󴰿�
map sh :set nosplitright<CR>:vsplit<CR>:cd %:h<CR>
" �Ϸ������۽��ϴ���
map sk :set nosplitbelow<CR>:split<CR>:cd %:h<CR>
" �·������۽��´���
map sj :set splitbelow<CR>:split<CR>:cd %:h<CR>
" ��������Ҵ���
map <LEADER>l <C-w>l
" ��������ϴ���
map <LEADER>k <C-w>k
" ��������´���
map <LEADER>j <C-w>j
" ��������󴰿�
map <LEADER>h <C-w>h

" ��ǰ���������ұ�
map <LEADER>L <C-w>L
" ��ǰ���������ϱ�
map <LEADER>K <C-w>K
" ��ǰ���������±�
map <LEADER>J <C-w>J
" ��ǰ�����������
map <LEADER>H <C-w>H

" ��������
map <up> :res +5<CR>
" ��������
map <down> :res -5<CR>
" ��������
map <left> :vertical resize-5<CR>
" ��������
map <right> :vertical resize+5<CR>
" �½���ǩҳ
map <C-t> :tabe<CR>
" ǰһ��ǩҳ
map t- :-tabnext<CR>
" ��һ��ǩҳ
map t= :+tabnext<CR>
" ���¼���vim�����ļ�
map rc :source ~\.vim\init.vim<CR>:nohlsearch<CR>
" Ѱ��������ȵĵ���
map <LEADER>fd /\(\<\w\+\>\)\_s*\1
" �滻ռ�շ�<++>
map <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>c4l
" ȫѡ
nmap <C-a> ggVG
" ���ҵ�vimrc
map <LEADER>rc :e ~\.vim\init.vim<CR>
" ���Ƶ�ϵͳ���а�
map +y "+y
" ��ϵͳ���а�ճ��
map +p "+p
" ����ģʽ��jjӳ��Ϊ<Esc>
nmap <CR> o<Esc>
nnoremap 0 ^
nnoremap ^ 0


nmap <LEADER>t :rightbelow vert term powershell<CR>
"nmap <LEADER>p :D:\python\Python36-32\python.exe
autocmd filetype tex noremap <buffer> <LEADER>i :!D:\python\Python36-32\python.exe D:\scripts\pdf2img.py -i %<.pdf -f %:h -o %<<CR>

map <LEADER>m :TableModeToggle<CR>
" ctrl+\ ע���뷴ע��
map <C-\> <LEADER>ci
nmap ts <Plug>(coc-translator-p)

set iminsert=2
set list
set listchars=tab:>-,trail:-
set shortmess-=S

set backupdir=D:\Program\ Files\ (x86)\gvim\vim82\tmp\backup,.
set directory=D:\Program\ Files\ (x86)\gvim\vim82\tmp\backup,.
if has('persistent_undo')
    set undofile
    set undodir=D:\Program\ Files\ (x86)\gvim\vim82\tmp\undo,.
endif

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

let g:netrw_sort_by = 'time'
let g:netrw_sort_direction = 'reverse'
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25
nmap tt :Vex<CR>


" ========
" ======== airline
" ========
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
"nmap [b :bp<CR>
"nmap ]b :bn<CR>
"nmap [b :bn<CR>

"nnoremap <silent> tl :ls<CR>
nnoremap <silent> tn :tabnew<CR>
nnoremap <silent> <leader>] :tabnext<CR>
nnoremap <silent> <leader>[ :tabprevious<CR>
"nnoremap <silent> tw :bdelete<CR>


" ========
" ======== coc
" ========
let g:coc_global_extensions = ['coc-python','coc-snippets','coc-translator']

function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)

"" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)

"" Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'

"" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'

"" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)

inoremap <silent><expr> <A-TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <LEADER>rn <Plug>(coc-rename)


" ========
" ======== Ultisnips
" ========
let g:UltiSnipsExpandTrigger = "<c-e>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
"let g:UltiSnipsSnippetDirectories = [$HOME.'D:\Program\ Files\ (x86)\Vim\vim82\Ultisnips\', 'ultisnips']
let g:UltiSnipsSnippetDirectories = [$HOME.'\ultisnips']

" ========
" ======== fzf
" ========

" find file
noremap \ :FZF<CR>
" find history
noremap <C-h> :MRU<CR>
" find buffer
noremap <C-b> :Buffers<CR>

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler

command! -bang -nargs=* Buffers
  \ call fzf#vim#buffers(
  \   '',
  \   <bang>0)

command! -bang -nargs=* MRU call fzf#vim#history()

" ========
" ======== vim-easy-align
" ========
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
if !exists('g:easy_align_delimiters')
  let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['%'] = { 'pattern': '%', 'ignore_groups': ['String'] }


" ========
" ======== vim-startify
" ========
let g:startify_custom_header = [
            \ '+----------------------------------------------------------+',
            \ '|                                                          |',
            \ '|   There is no one in the world who deserves your love.   |',
            \ '|                                                          |',
            \ '+----------------------------------------------------------+',
            \]
let g:startify_change_to_dir = 1
map <leader>` :Startify<CR>


" ========
" ======== vim-repl
" ========
let g:repl_program = {
            \   'python': 'ipython',
            \   }
let g:repl_predefine_python = {
            \   'numpy': 'import numpy as np',
            \   'matplotlib': 'from matplotlib import pyplot as plt'
            \   }
let g:repl_cursor_down = 1
let g:repl_python_automerge = 1
let g:repl_ipython_version = '7'
let g:repl_console_name = 'DebugREPL'
autocmd filetype python nnoremap <buffer> <LEADER>i :call REPLCondaIpython()<CR>
func REPLCondaIpython()
    let g:repl_python_pre_launch_command = 'conda activate base'
    :REPLToggle
endfunc

autocmd filetype python nnoremap <buffer> <LEADER>I :call REPLTFIpython()<CR>
func REPLTFIpython()
    let g:repl_python_pre_launch_command = 'conda activate TF2.1'
    :REPLToggle
endfunc

"nnoremap <leader>r :REPLToggle<Cr>
autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>
let g:repl_position = 3

" =========
" ========= vim-latex
" =========
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_SmartKeyBS=0
let g:Tex_ViewRule_pdf = 'D:\\SumatraPDF\\SumatraPDF.exe'
let g:Tex_PromptedEnvironments = ''
let g:Tex_MultipleCompileFormats = 'pdf'


" ========
" ======== vim-latex-live-preview
" ========
let g:livepreview_previewer='D:\\SumatraPDF\\SumatraPDF.exe'
"let g:livepreview_previewer='okular'
autocmd Filetype tex,plaintex setl updatetime=1
let g:livepreview_engine='xelatex'
let g:livepreview_cursorhold_recompile=0
set conceallevel=1
let g:tex_conceal='abdmg'
"hi Conceal ctermbg=none
"let g:Tex_FoldedSections=''

" ========
" ======== markdown
" ========
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = 'chrome'

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '${name}'

" ========
" ======== easymotion
" ========
nmap ss <Plug>(easymotion-s2)

" ========
" ======== python-syntax
" ========
let g:python_highlight_all = 1
" ========
" ======== runcode
" ========
map <S-F5> :call RunTFCode()<CR>
func! RunTFCode()
    exec "w"
    if &filetype == 'python'
        :cd %:h
        :belowright term powershell D:\anaconda3\envs\TF2.1\python.exe %
        ":set laststatus=0 noruler
        :res -10
    endif
endfunc

map <F5> :call RunCondaCode()<CR>
func! RunCondaCode()
    exec "w"
    if &filetype == 'python'
        :cd %:h
        :belowright term powershell D:\anaconda3\python.exe %
        ":set laststatus=0 noruler
        :res -10
    endif

    if &filetype == 'tex'
        if term_list() != []
            call term_sendkeys(term_list()[0], 'exit' . "\<CR>")
        endif
        let s:filename = expand('%:p')
        let s:file = expand('%:p:r')
        silent:rightbelow term ++rows=10
        call term_sendkeys('', 'xelatex ' )
        call term_sendkeys('', s:filename . "\<CR>")
        unlet s:filename
        call term_sendkeys('', 'D:\\SumatraPDF\\SumatraPDF.exe ')
        call term_sendkeys('', s:file)
        call term_sendkeys('', '.pdf' . "\<CR>")
        call term_sendkeys('', 'exit' . "\<CR>")
        unlet s:file
     endif
endfunc

"map <silent><F6> :call RunDebugCode()<CR>
"func! RunDebugCode()
    "exec "w"
    "if &filetype == 'python'
        ":cd %:h
        ":belowright term D:\anaconda3\python.exe -m pdb %
        "":set laststatus=0 noruler
        ":res -10
    "endif
"endfunc
