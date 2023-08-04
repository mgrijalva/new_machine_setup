echo ">>> Starting vim setup"

VIMRC=~/.vimrc
if [ -f "$VIMRC" ]; then
	echo "$VIMRC already exists! Skipping this to be safe..."
else
	touch $VIMRC
	cp ./dotfiles/.vimrc $VIMRC
    echo "copied"
fi

echo "<<< Done with vim setup"
