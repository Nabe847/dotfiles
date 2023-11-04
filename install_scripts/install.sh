#!/bin/bash

echo "Installing Xcode"
xcode-select --install

echo "Installing Homebrew"
which /opt/homebrew/bin/brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew doctor
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew update --verbose
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew upgrade --verbose

echo "Installing .Brewfile applications"
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew bundle --file ./.Brewfile --verbose

which brew >/dev/null 2>&1 && brew cleanup --verbose

echo "Installing programming laguages"
./asdf.sh

echo "Creating symbolic links"
./link.sh

echo "Creating GitHub CLI aliases"
./gh.sh

exec $SHELL -l
