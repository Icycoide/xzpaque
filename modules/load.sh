# xzpaque load <package>
if [ -z "$1" ]; then
    echo "Usage: xzpaque load <package>"
    return 1
fi
if [ "$1" == "all" ]; then
    for package in $(ls -1 $HOME/.paque/packages); do
        if [ -f "$HOME/.paque/packages/$package/__load.sh" ]; then
            source "$HOME/.paque/packages/$package/__load.sh"
        fi
    done
elif [ -f "$HOME/.paque/packages/$1/__load.sh" ]; then
    source "$HOME/.paque/packages/$1/__load.sh"
fi