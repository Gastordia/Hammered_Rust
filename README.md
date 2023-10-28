# Rust Syntax Highlighting for Vim

This Vim plugin provides enhanced syntax highlighting for Rust code

## Installation

### Using a Plugin Manager (Vim-Plug)

1. **Install Vim-Plug:**
   Add the following lines to your ~/.vimrc to configure Vim-Plug and specify the plugins you want to use.
   '''vim
   " Specify where plugins will be installed (optional)
   call plug#begin('~/.vim/plugged')

   Plug 'Gastordia/Hammered_Rust'

   call plug#end()
   
  Save your ~/.vimrc and open Vim. Run the following command to install the plugins specified in your ~/.vimrc:
  :PlugInstall
  then restart vim
### Manual Installation
   Clone the GitHub repository for this Rust syntax highlighting plugin to your local machine. You can use the git clone command to do this:
   git clone <Gastordia/Hammered_Rust>
   After cloning the repository, you will typically have a directory containing the plugin's files. Manually copy these files to the appropriate directories in your Vim configuration. In this case, you need to copy the rust_syntax.vim file to ~/.vim/syntax/.
   The activate the Plugin by adding the following line to your  ~/.vimrc:
     autocmd BufNewFile,BufRead *.rs set filetype=rust
  then restart vim
  
  
