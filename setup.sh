

if hash jupyter 2>/dev/null; then
    JUPYTER=$(jupyter --data-dir)
else
    JUPYTER=~/.jupyter
fi

mkdir -p "$JUPYTER/custom"

cp custom.js "$JUPYTER/custom/"


# Foldingtext needs to be installed
cp -r done_cmd.ftplugin "~/Library/Application Support/FoldingText/Plug-Ins"

# Brew
#
