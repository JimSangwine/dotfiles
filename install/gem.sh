brew install gpg2

gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

source "$HOME/.rvm/scripts/rvm"

rvm install 2.1.7
rvm use 2.1.7 --default

gem install consular
gem install consular-osx
gem install lunchy
gem install pygmentize
gem install tmuxinator
gem install sass
gem install compass