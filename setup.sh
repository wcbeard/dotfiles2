SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )
FILES="$SCRIPTPATH/files"

# Brew
# run brew/brew.sh

mkdir -p "$HOME/.config/nvim/"


rm "$HOME/.bash_aliases"
# rm "$HOME/.screenrc"
rm "$HOME/.tmux.conf"
rm "$HOME/.vimrc"
# rm "$HOME/.zshrc"
rm "$HOME/.config/nvim/init.vim"
rm "$HOME/.gitconfig"
rm "$HOME/.config/linuxrc"
rm "$HOME/.direnvrc"

ln -s "$FILES/bash_aliases" "$HOME/.bash_aliases"
# ln -s "$FILES/screenrc" "$HOME/.screenrc"
ln -s "$FILES/tmux.conf" "$HOME/.tmux.conf"
ln -s "$FILES/vimrc" "$HOME/.vimrc"
ln -s "$FILES/zshrc" "$HOME/.zshrc"
ln -s "$FILES/gitconfig" "$HOME/.gitconfig"
ln -s "$FILES/nvimrc" "$HOME/.config/nvim/init.vim"
ln -s "$FILES/direnvrc.sh" "$HOME/.direnvrc"
ln -s "$FILES/linuxrc" "$HOME/.config/linuxrc"
ln -s "$FILES/karabiner" "$HOME/.config"

if [[ -f "$FILES/local_setup.sh" ]]; then
	echo 'here'
else
	echo 'not here'

fi

# ln -s "$FILES/local-mozbox.sh" "$HOME/.config/local.sh"
# ln -s "$FILES/local.sh" "$HOME/.config/local.sh"


