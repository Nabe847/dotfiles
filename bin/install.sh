#!/bin/bash

xcode-select --install

which /opt/homebrew/bin/brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew doctor
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew update --verbose
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew upgrade --verbose
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew bundle --file ./.Brewfile --verbose
which brew >/dev/null 2>&1 && brew cleanup --verbose

./asdf.sh
./link.sh
./gh.sh
./git.sh
