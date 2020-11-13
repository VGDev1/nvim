" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Convert binary, hex, etc..
    Plug 'glts/vim-radical' " Show other forms on numbers 
    " Repeat stuff
    Plug 'tpope/vim-repeat' " using . will repeat all map
    " Text Navigation
    Plug 'unblevable/quick-scope' " find words faster

  if exists('g:vscode') " If used in vsc
    " Easy motion for VSCode
    " Plug 'asvetliakov/vim-easymotion'
    Plug 'ChristianChiarulli/vscode-easymotion'
    Plug 'machakann/vim-highlightedyank'
  else " Normal terminal vim
    " ######################Newest version #####################
    " For colored comments
    Plug 'jbgutierrez/vim-better-comments' " Colored comments
    " Multiple cursors
    Plug 'terryma/vim-multiple-cursors' " Multiple cursors
    " Alternative formatter
    Plug 'sbdchd/neoformat' " Nice formatter for python and jsc
    " Better Comments
    Plug 'tpope/vim-commentary' " to comment using gc
    " Convert binary, hex, etc..
    Plug 'glts/vim-radical' " Show other forms on numbers 
    " Repeat stuff
    Plug 'tpope/vim-repeat' " using . will repeat all map
    " Text Navigation
    Plug 'unblevable/quick-scope' " find words faster
    " ###################Older version ##################
    " Easymotion
    Plug 'easymotion/vim-easymotion' " navigate faster using a,b,c after ex w
    " Surround
    Plug 'tpope/vim-surround' " to change ex comma to colons around something 
    " Have the file system follow you around
    Plug 'airblade/vim-rooter' " cd automatic to workdir
    " auto set indent settings
    Plug 'tpope/vim-sleuth' 
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot' "multiple languages support in this package
    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter' "Better code hightligting only supported in newest nvim
    Plug 'nvim-treesitter/playground'
    " Cool Icons
    Plug 'kyazdani42/nvim-web-devicons' 
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs' " automatic writing of pairs
    " Closetags
    Plug 'alvan/vim-closetag' " for html
    " Themes
    Plug 'christianchiarulli/nvcode-color-schemes.vim' "Not used atm
    Plug 'joshdick/onedark.vim' "nice color theme
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " vsc intellisens support
    " Status Line
    Plug 'glepnir/galaxyline.nvim'
    Plug 'kevinhwang91/rnvimr'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    Plug 'junegunn/fzf.vim'
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    " Terminal
    Plug 'voldikss/vim-floaterm' "floating terminal window
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Zen mode
    Plug 'junegunn/goyo.vim' " for better focus ;) 
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Interactive code
    Plug 'metakirby5/codi.vim' " not perfect
    " Better tabline
    Plug 'romgrk/barbar.nvim'
    " undo time travel
    Plug 'mbbill/undotree'
    " Find and replace
    Plug 'ChristianChiarulli/far.vim' " Easier search and replace multiple files
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " live server
    Plug 'turbio/bracey.vim'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie' " Not as easy to get lost
    " " async tasks
    Plug 'skywind3000/asynctasks.vim' "copy of vsc async task system
    Plug 'skywind3000/asyncrun.vim'
    " Swap windows
    Plug 'wesQ3/vim-windowswap' " easy way to windowswap
    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
    " Easily Create Gists
    Plug 'mattn/vim-gist' " Instantly share code
    Plug 'mattn/webapi-vim'
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua' " perfect to see colors with webdev
    " Intuitive buffer closing
    Plug 'moll/vim-bbye' 
    " Debugging
    Plug 'puremourning/vimspector' "advanced multilanguage debugger
    Plug 'szw/vim-maximizer' "maximizing curren window toggle 
    " Minimap
    Plug 'wfxr/minimap.vim'
    " Rainbow brackets
    Plug 'luochen1990/rainbow'




    "##########################PLUGIN GRAVEYARD########################################
    " Rainbow brackets
    " Plug 'luochen1990/rainbow'
    " Async Linting Engine
    " Plug 'dense-analysis/ale'
    " Multiple Cursors
    " Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    " Plug 'yuezk/vim-js'
    " Plug 'maxmellon/vim-jsx-pretty'
    " Plug 'jelera/vim-javascript-syntax'
    " Debug
    " Plug 'mfussenegger/nvim-dap'
    " Plug 'nvim-dap-virtual-text'
    " Plug 'nvim-treesitter/nvim-treesitter-refactor'
    " Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    " Plug 'romgrk/nvim-treesitter-context'
    " Minimap
    " Plug 'wfxr/minimap.vim'
    " jsx syntax support
    " Typescript syntax
    " Plug 'HerringtonDarkholme/yats.vim'
    " Multiple Cursors
    " Plug 'kaicataldo/material.vim'
    " Plug 'tomasiser/vim-code-dark'
    " Plug 'mg979/vim-xtabline'
    " Files
    " Plug 'tpope/vim-eunuch'
    " Vim Wiki
    " Plug 'https://github.com/vimwiki/vimwiki.git'
    " Echo doc
    " Plug 'Shougo/echodoc.vim'
    " Plug 'hardcoreplayers/spaceline.vim'
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " Ranger
    " Plug 'francoiscabrol/ranger.vim'
    " Plug 'rbgrouleff/bclose.vim'
    " Making stuff
    " Plug 'neomake/neomake'
    " Plug 'mhinz/vim-signify'
    " Plug 'preservim/nerdcommenter'
    " Plug 'brooth/far.vim'
    " Plug 'atishay/far.vim'
    " Plug 'romgrk/lib.kom'
    " Plug 'brooth/far.vim'
    " Debugging
  endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
