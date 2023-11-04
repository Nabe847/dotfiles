set +e
mkdir -p ./backup

mv ~/.zprofile ./backup/ 2>/dev/null
ln -s ~/dotfiles/.zprofile ~/

mv ~/.zshrc ./backup/ 2>/dev/null
ln -s ~/dotfiles/.zshrc ~/
