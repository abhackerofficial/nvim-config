if empty(glob('~/.config/nvim/autoload/plug.vim'))
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugs')

  " Themes
  Plug 'joshdick/onedark.vim'
  Plug 'morhetz/gruvbox'
  Plug 'lifepillar/vim-gruvbox8'
  Plug 'ayu-theme/ayu-vim'

  " statusline
  Plug 'itchyny/lightline.vim'

  " VS Code like intellisense and language-servers
  Plug 'neoclide/coc.nvim'

  " Auto pairs for (), [], "", '', {}
  Plug 'jiangmiao/auto-pairs'

  " for better syntax highlighting
  Plug 'sheerun/vim-polyglot'
  Plug 'uiiaoo/java-syntax.vim' " for java

  " FUZZY FINDER file finder
  Plug 'junegunn/fzf'

  " NERDTree file explorer
  Plug 'preservim/nerdtree'

  " Dev icons displays file's icons
  Plug 'ryanoasis/vim-devicons'

  " git tracker plugin
  Plug 'airblade/vim-gitgutter'

  " indent line
  Plug 'Yggdroot/indentLine'

  "new plugs
  Plug 'VundleVim/Vundle.vim'

  Plug 'vim-airline/vim-airline'

  Plug 'cdelledonne/vim-cmake'

  Plug 'airblade/vim-gitgutter'

  Plug 'editorconfig/editorconfig-vim'

  Plug 'itchyny/lightline.vim'

  Plug 'junegunn/fzf'

  Plug 'junegunn/fzf.vim'
  
  Plug 'mattn/emmet-vim'
  
  Plug 'terryma/vim-multiple-cursors'
  
  Plug 'tpope/vim-eunuch'
  
  Plug 'tpope/vim-surround'

  Plug 'w0rp/ale'

  Plug 'Chiel92/vim-autoformat'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
