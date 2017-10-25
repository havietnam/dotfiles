mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# ack
cd ~/.vim/bundle && git clone https://github.com/mileszs/ack.vim 
# ag
cd ~/.vim/bundle && git clone https://github.com/rking/ag.vim
# ctrlp
cd ~/.vim/bundle && git clone https://github.com/ctrlpvim/ctrlp.vim
# nerdcommenter
cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdcommenter
# nerdtree
cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree
# vim-rails 
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-rails
# vim-rspec
cd ~/.vim/bundle && git clone https://github.com/thoughtbot/vim-rspec
# vim-ruby
cd ~/.vim/bundle && git clone https://github.com/vim-ruby/vim-ruby
# vim-better-whitespace
cd ~/.vim/bundle && git clone https://github.com/ntpeters/vim-better-whitespace
# vim-airline
cd ~/.vim/bundle && git clone https://github.com/bling/vim-airline
# vim-airline-themes
cd ~/.vim/bundle && git clone https://github.com/vim-airline/vim-airline-themes
# vim-fugitive
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-fugitive
# sparkup
cd ~/.vim/bundle && git clone https://github.com/rstacruz/sparkup
# vim-multiple-cursors
cd ~/.vim/bundle && git clone https://github.com/terryma/vim-multiple-cursors.git
# ctrlp-py-matcher
cd ~/.vim/bundle && git clone https://github.com/FelikZ/ctrlp-py-matcher
#vim-go
cd ~/.vim/bundle && git clone https://github.com/fatih/vim-go.git

sudo apt-get install silversearcher-ag

