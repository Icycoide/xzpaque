# xzpaque load <package>
if [ -z "$1" ]; then
    echo "Usage: xzpaque load <package>"
    return 1
fi
if [ -f "$HOME/.paque/packages/$1/__load.sh" ]; then
    source "$HOME/.paque/packages/$1/__load.sh"
fi