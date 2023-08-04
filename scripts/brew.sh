echo "################################"
echo Starting homebrew setup
echo "################################"

brew update

casks=(
	google-chrome
	firefox
	visual-studio-code
	slack
	intellij-idea
	postman
	karabiner-elements
	spotify
	iterm2
	caffiene
)

for i in "${casks[@]}"
do
	brew install --cask $i
done

brew tap heroku/brew

brews=(
	rbenv
	nvm
	dotnet
	go
	vim
	yarn
	heroku
)
for i in "${brews[@]}"
do
	brew install $i
done

brew cleanup
