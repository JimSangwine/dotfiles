brew install nvm

source "$DOTFILES_DIR"/system/.nvm

nvm install 5
nvm use 5
nvm alias default 5

# Globally install with npm

packages=(
    bower
    grunt
    gulp
    underscore
    underscore-cli
    yo
)

# Removed
#http-server
#nodemon
#release-it
#spot
#svgo
#tldr
#vtop

npm install -g "${packages[@]}"

npm set init.author.name "Jim Sangwine"
npm set init.author.email "jim@sangwine.net"
npm set init.author.url "http://sangwine.net"

ln -sfv "$DOTFILES_DIR/runcom/.npmrc" ~