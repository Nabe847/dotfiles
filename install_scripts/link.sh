set +e
rm -rf ./backup/.config
mkdir -p ./backup/.config/zsh

mv ~/.zprofile ./backup/.config/zsh 2>/dev/null
ln -s ~/dotfiles/.config/zsh/.zprofile ~/

mv ~/.zshrc ./backup/.config/zsh 2>/dev/null
ln -s ~/dotfiles/.config/zsh/.zshrc ~/
