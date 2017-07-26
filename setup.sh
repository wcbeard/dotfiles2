SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )
FILES="$SCRIPTPATH/files"

if hash jupyter 2>/dev/null; then
    JUPYTER=$(jupyter --data-dir)
else
    JUPYTER="$HOME/.jupyter"
fi

mkdir -p "$JUPYTER/custom"

cp "$SCRIPTPATH/custom.js" "$JUPYTER/custom/"


# Foldingtext needs to be installed
cp -r "$SCRIPTPATH/done_cmd.ftplugin" "$HOME/Library/Application Support/FoldingText/Plug-Ins"

# Brew
# run brew/brew.sh

rm $HOME/.bash_aliases
rm $HOME/.screenrc
rm $HOME/.tmux.conf
rm $HOME/.vimrc
rm $HOME/.zshrc
rm $HOME/.nvimrc
rm $HOME/.gitconfig

ln -s $FILES/bash_aliases $HOME/.bash_aliases
ln -s $FILES/screenrc $HOME/.screenrc
ln -s $FILES/tmux.conf $HOME/.tmux.conf
ln -s $FILES/vimrc $HOME/.vimrc
ln -s $FILES/zshrc $HOME/.zshrc
ln -s $FILES/nvimrc $HOME/.nvimrc
ln -s $FILES/gitconfig $HOME/.gitconfig







