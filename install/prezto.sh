echo "Setting up zsh and zprezto..."

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "$DOTFILES_DIR"/runcom/zprezto/!(.|..) ; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/$(basename $rcfile)"
done

# Set zsh as default shell
chsh -s /bin/zsh

echo "All done! Firing up zsh..."
echo "Please run `source ~/.zprofile`"

zsh
