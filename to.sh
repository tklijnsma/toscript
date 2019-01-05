SCRIPTPATH="$(toscript-python "$@")"
if [ $? == 0 ]; then
    source "$SCRIPTPATH"
else
    echo "$SCRIPTPATH"
fi