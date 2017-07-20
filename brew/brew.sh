if hash brew 2>/dev/null; then
    echo 'homebrew already installed'
else
    echo 'Installing homebrew'
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


brew tap caskroom/cask
brew tap caskroom/fonts


echo "Installing packages"
brew install $(cat pkgs.txt)

echo "Installing casks"
brew cask install $(cat casks.txt)

echo "Installing fonts"
brew cask install $(cat fonts.txt)
