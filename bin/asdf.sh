rm -rf "$HOME/.default-python-packages"
ln -s  ~/dotfiles/.config/asdf/.default-python-packages ~/
asdf plugin-add python
asdf install python latest
asdf global python latest

source "$HOME/.zshrc"
pip install --upgrade pip
