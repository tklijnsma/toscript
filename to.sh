SCRIPTPATH="$(toscript-python "$@")"
if [ $? == 0 ]; then
    echo "$SCRIPTPATH"
    echo "Sourcing: source $SCRIPTPATH"
    source "$SCRIPTPATH"
else
    echo "$SCRIPTPATH"
fi