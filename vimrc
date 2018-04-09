set hlsearch
set nu
set nocompatible
set backspace=indent,eol,start
syntax enable

execute pathogen#infect()
syntax on
filetype plugin indent on


map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'


set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/opencv
"set tags+=~/.vim/tags/opencv2

"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview

"" Powerline setting
"let g:Powerline_symbols = 'fancy'
set laststatus=2

"" colorscheme solarized setting
set background=dark
colorscheme solarized

"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" YCM 补全菜单配色
" 菜单
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
"选中项
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

" YouCompleteMe 功能  
" 补全功能在注释中同样有效  
let g:ycm_complete_in_comments=1  
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示  
let g:ycm_confirm_extra_conf=0  
" 开启 YCM 基于标签引擎  
let g:ycm_collect_identifiers_from_tags_files=1  
" 引入 C++
" 标准库tags，这个没有也没关系，只要.ycm_extra_conf.py文件中指定了正确的标准库路径  
" set tags+=/data/misc/software/misc./vim/stdcpp.tags  
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键  
inoremap <leader>; <C-x><C-o>  
" 补全内容不以分割子窗口形式出现，只显示补全列表  
"set completeopt-=preview  
" 从第一个键入字符就开始罗列匹配项  
let g:ycm_min_num_of_chars_for_completion=1  
" 禁止缓存匹配项，每次都重新生成匹配项  
let g:ycm_cache_omnifunc=0  
" 语法关键字补全              
let g:ycm_seed_identifiers_with_syntax=1  
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;  
let g:ycm_key_invoke_completion = '<M-;>'  
" 设置转到定义处的快捷键为ALT + G，这个功能非常赞  
nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>
