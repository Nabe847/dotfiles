set +e
rm -rf ./backup/link
mkdir -p ./backup/link

mv ~/.zprofile ./backup/link 2>/dev/null
ln -s ~/dotfiles/.zprofile ~/

mv ~/.zshrc ./backup/link 2>/dev/null
ln -s ~/dotfiles/.zshrc ~/
