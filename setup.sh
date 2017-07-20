

if hash jupyter 2>/dev/null; then
    JUPYTER=$(jupyter --data-dir)
else
    JUPYTER=~/.jupyter
fi

mkdir -p "$JUPYTER/custom"

cp custom.js "$JUPYTER/custom/"


# Brew
# brew tap caskroom/fonts