toscript_python_getter="$(dirname $(realpath $BASH_SOURCE))/bin/toscript-python"
toscript_python_output="$($"$toscript_python_getter" "$@")"
if [ $? == 0 ]; then
    source "$toscript_python_output"
else
    echo "$toscript_python_output"
fi
unset toscript_python_getter
unset toscript_python_output