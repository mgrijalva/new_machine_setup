echo ">>> Starting zsh setup"

ZSHRC=~/.zshrc
if [ -f "$ZSHRC" ]; then
    echo "$ZSHRC already exists! Skipping this to be safe..."
else
    touch ~/.zshrc
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # zsh stuff needs to happen _after_ oh-my-zsh setup
    echo 'eval "$(rbenv init - zsh)"' >> ~/.zshrc
fi

echo "<<< Done with zsh setup"
